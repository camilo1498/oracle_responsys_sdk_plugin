import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin_platform_interface.dart';

class OracleResponsiveSdkPlugin {
  Future<String?> getPlatformVersion() {
    return OracleResponsiveSdkPluginPlatform.instance.getPlatformVersion();
  }
}
