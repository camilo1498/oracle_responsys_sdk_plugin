import 'package:oracle_responsys_sdk_plugin/oracle_responsive_sdk_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class OracleResponsiveSdkPluginPlatform extends PlatformInterface {
  /// Constructs a OracleResponsiveSdkPuginPlatform.
  OracleResponsiveSdkPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static OracleResponsiveSdkPluginPlatform _instance =
      MethodChannelOracleResponsiveSdkPlugin();

  /// The default instance of [OracleResponsiveSdkPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelOracleResponsiveSdkPugin].
  static OracleResponsiveSdkPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OracleResponsiveSdkPluginPlatform] when
  /// they register themselves.
  static set instance(OracleResponsiveSdkPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
