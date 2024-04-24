enum Flavor {
  indiaDev,
  indiaProd,
  indiaStg,
  globalDev,
  globalProd,
  globalStg,
}

class EnvironmentConfig {
  static const APP_TYPE = String.fromEnvironment('IS_FLAGSHIP_ENABLE');
  static const PRE_PROD = String.fromEnvironment('IS_PRE_PROD');
  static const PAYLOAD_ENCRYPT_KEY =
      String.fromEnvironment('PAYLOAD_ENCRYPT_KEY');
}

class ProductFlavorConfig {
  static late Flavor appFlavor;
}
