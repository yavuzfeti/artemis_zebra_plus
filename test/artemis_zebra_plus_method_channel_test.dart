import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:artemis_zebra_plus/artemis_zebra_plus_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelArtemisZebraPlus platform = MethodChannelArtemisZebraPlus();
  const MethodChannel channel = MethodChannel('artemis_zebra_plus');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
