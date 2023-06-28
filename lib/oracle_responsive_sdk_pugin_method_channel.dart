import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'oracle_responsys_sdk_plugin_platform_interface.dart';

/// An implementation of [OracleResponsiveSdkPuginPlatform] that uses method channels.
class MethodChannelOracleResponsiveSdkPugin
    extends OracleResponsiveSdkPuginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('oracle_responsys_sdk_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
