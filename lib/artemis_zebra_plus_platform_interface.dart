import 'package:artemis_zebra_plus/zebra_printer.dart';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'artemis_zebra_plus_method_channel.dart';

abstract class ArtemisZebraPlusPlatform extends PlatformInterface {
  /// Constructs a ArtemisZebraPlusPlatform.
  ArtemisZebraPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static ArtemisZebraPlusPlatform _instance = MethodChannelArtemisZebraPlus();

  /// The default instance of [ArtemisZebraPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelArtemisZebraPlus].
  static ArtemisZebraPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ArtemisZebraPlusPlatform] when
  /// they register themselves.
  static set instance(ArtemisZebraPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> discoverPrinters() {
    throw UnimplementedError('discoverPrinters() has not been implemented.');
  }

  Future<void> setMethodCallHandler({required Future<dynamic> Function(MethodCall call)? handler}) {
    throw UnimplementedError('setMethodCallHandler() has not been implemented.');
  }

  Future<ZebraPrinter> getZebraPrinterInstance({String? label,required void Function(ZebraPrinter) notifier,Function? statusListener}) {
    throw UnimplementedError('getZebraPrinterInstance() has not been implemented.');
  }
}
