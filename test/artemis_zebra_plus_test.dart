import 'package:artemis_zebra_plus/artemis_zebra.dart';
import 'package:artemis_zebra_plus/zebra_printer.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:artemis_zebra_plus/artemis_zebra_plus.dart';
import 'package:artemis_zebra_plus/artemis_zebra_plus_platform_interface.dart';
import 'package:artemis_zebra_plus/artemis_zebra_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockArtemisZebraPlusPlatform
    with MockPlatformInterfaceMixin
    implements ArtemisZebraPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> discoverPrinters() {
    // TODO: implement discoverPrinters
    throw UnimplementedError();
  }

  @override
  Future<ZebraPrinter> getZebraPrinterInstance({String? label, required void Function(ZebraPrinter p1) notifier, Function? statusListener}) {
    // TODO: implement getZebraPrinterInstance
    throw UnimplementedError();
  }

  @override
  Future<void> setMethodCallHandler({required Future Function(MethodCall call)? handler}) {
    // TODO: implement setMethodCallHandler
    throw UnimplementedError();
  }
}

void main() {
  final ArtemisZebraPlusPlatform initialPlatform = ArtemisZebraPlusPlatform.instance;

  test('$MethodChannelArtemisZebraPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelArtemisZebraPlus>());
  });

  test('getPlatformVersion', () async {
    ArtemisZebraPlus artemisZebraPlusPlugin = ArtemisZebraPlus();
    MockArtemisZebraPlusPlatform fakePlatform = MockArtemisZebraPlusPlatform();
    ArtemisZebraPlusPlatform.instance = fakePlatform;

    expect(await artemisZebraPlusPlugin.getPlatformVersion(), '42');
  });
}
