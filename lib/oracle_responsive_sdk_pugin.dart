import 'oracle_responsys_sdk_plugin_platform_interface.dart';

class OracleResponsiveSdkPugin {
  Future<String?> getPlatformVersion() {
    return OracleResponsiveSdkPuginPlatform.instance.getPlatformVersion();
  }
}
