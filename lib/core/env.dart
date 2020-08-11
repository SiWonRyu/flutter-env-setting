// 1
enum Environment { DEV, STAGING, PROD }

// 3
class Environments {
  static Map<String, dynamic> _config;
  static Environment _currentEnv;

  static void setEnvironments(Environment env) {
    _currentEnv = env;

    switch (env) {
      case Environment.DEV:
        _config = _Config.debugConstants;
        break;
      case Environment.PROD:
        _config = _Config.productConstants;
        break;
      case Environment.STAGING:
        _config = _Config.stagingConstants;
        break;
      default:
        _config = _Config.debugConstants;
        break;
    }
  }

  static get authUrl => _config[_Config.AUTH_URL];
  static get websocketUrl => _config[_Config.WEBSOCKET_URL];
  static get productUrl => _config[_Config.PRODUCT_URL];
  static get env => _currentEnv.toString();
}

// 2

class _Config {
  // 1
  static const String AUTH_URL = 'AUTH';
  static const String PRODUCT_URL = 'PRODUCT';
  static const String WEBSOCKET_URL = 'WEBSOCKET';

  // 2
  static const String devPrefix = 'https://dev.cloud';
  static const String productPrefix = 'https://product.cloud';

  // 3
  static Map<String, String> debugConstants = {
    AUTH_URL: '$devPrefix/auth/v1',
    PRODUCT_URL: '$devPrefix/product/v1',
    WEBSOCKET_URL: '$devPrefix',
  };

  static Map<String, String> productConstants = {
    AUTH_URL: '$productPrefix/auth/v1',
    PRODUCT_URL: '$productPrefix/product/v1',
    WEBSOCKET_URL: '$productPrefix',
  };

  static Map<String, String> stagingConstants = {
    AUTH_URL: '$productPrefix/auth/v1',
    PRODUCT_URL: '$productPrefix/product/v1',
    WEBSOCKET_URL: '$productPrefix',
  };
}
