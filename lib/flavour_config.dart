enum Flavor {
  indiaDev,
  indiaProd,
  indiaStg,
  globalDev,
  globalProd,
  globalStg,
}

class EnvironmentConfig {
  static const appType = String.fromEnvironment('IS_FLAGSHIP_ENABLE');
  static const preProd = String.fromEnvironment('IS_PRE_PROD');
  static const payloadEncryptKey =
      String.fromEnvironment('PAYLOAD_ENCRYPT_KEY');
}

class ProductFlavorConfig {
  static late Flavor appFlavor;
}
