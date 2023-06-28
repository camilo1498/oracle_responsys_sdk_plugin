import 'package:flutter_test/flutter_test.dart';
import 'package:oracle_responsive_sdk_pugin/oracle_responsive_sdk_pugin.dart';
import 'package:oracle_responsive_sdk_pugin/oracle_responsive_sdk_pugin_method_channel.dart';
import 'package:oracle_responsive_sdk_pugin/oracle_responsive_sdk_pugin_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOracleResponsiveSdkPuginPlatform
    with MockPlatformInterfaceMixin
    implements OracleResponsiveSdkPuginPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OracleResponsiveSdkPuginPlatform initialPlatform =
      OracleResponsiveSdkPuginPlatform.instance;

  test('$MethodChannelOracleResponsiveSdkPugin is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelOracleResponsiveSdkPugin>());
  });

  test('getPlatformVersion', () async {
    OracleResponsiveSdkPugin oracleResponsiveSdkPuginPlugin =
        OracleResponsiveSdkPugin();
    MockOracleResponsiveSdkPuginPlatform fakePlatform =
        MockOracleResponsiveSdkPuginPlatform();
    OracleResponsiveSdkPuginPlatform.instance = fakePlatform;

    expect(await oracleResponsiveSdkPuginPlugin.getPlatformVersion(), '42');
  });
}
