import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelOracleResponsiveSdkPlugin platform =
      MethodChannelOracleResponsiveSdkPlugin();
  const MethodChannel channel = MethodChannel('oracle_responsys_sdk_plugin');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
