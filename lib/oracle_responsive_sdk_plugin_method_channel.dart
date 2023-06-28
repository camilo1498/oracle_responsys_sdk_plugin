import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin_platform_interface.dart';

/// An implementation of [OracleResponsiveSdkPluginPlatform] that uses method channels.
class MethodChannelOracleResponsiveSdkPlugin
    extends OracleResponsiveSdkPluginPlatform {
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
