import 'package:education_tiktok/Base/environment.dart';

import 'env_config.dart';

class BuildConfig {
  late final Environment environment;
  late final EnvConfig config;
  bool _lock = false;

  static final BuildConfig instance = BuildConfig._internal();

  BuildConfig._internal();

  factory BuildConfig.instantiate({
    required Environment envType,
    required EnvConfig envConfig,
  }) {
    if (instance._lock) return instance;

    instance.environment = envType;
    instance.config = envConfig;
    instance._lock = true;

    return instance;
  }
}
