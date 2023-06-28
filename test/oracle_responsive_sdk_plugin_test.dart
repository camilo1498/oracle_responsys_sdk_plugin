import 'package:flutter_test/flutter_test.dart';
import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin.dart';
import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin_method_channel.dart';
import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOracleResponsiveSdkPluginPlatform
    with MockPlatformInterfaceMixin
    implements OracleResponsiveSdkPluginPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OracleResponsiveSdkPluginPlatform initialPlatform =
      OracleResponsiveSdkPluginPlatform.instance;

  test('$MethodChannelOracleResponsiveSdkPlugin is the default instance', () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelOracleResponsiveSdkPlugin>());
  });

  test('getPlatformVersion', () async {
    OracleResponsiveSdkPlugin oracleResponsiveSdkPuginPlugin =
        OracleResponsiveSdkPlugin();
    MockOracleResponsiveSdkPluginPlatform fakePlatform =
        MockOracleResponsiveSdkPluginPlatform();
    OracleResponsiveSdkPluginPlatform.instance = fakePlatform;

    expect(await oracleResponsiveSdkPuginPlugin.getPlatformVersion(), '42');
  });
}
