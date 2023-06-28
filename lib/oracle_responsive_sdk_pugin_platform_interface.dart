import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'oracle_responsys_sdk_plugin_method_channel.dart';

abstract class OracleResponsiveSdkPuginPlatform extends PlatformInterface {
  /// Constructs a OracleResponsiveSdkPuginPlatform.
  OracleResponsiveSdkPuginPlatform() : super(token: _token);

  static final Object _token = Object();

  static OracleResponsiveSdkPuginPlatform _instance =
      MethodChannelOracleResponsiveSdkPugin();

  /// The default instance of [OracleResponsiveSdkPuginPlatform] to use.
  ///
  /// Defaults to [MethodChannelOracleResponsiveSdkPugin].
  static OracleResponsiveSdkPuginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OracleResponsiveSdkPuginPlatform] when
  /// they register themselves.
  static set instance(OracleResponsiveSdkPuginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
