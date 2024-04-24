import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'mains/main.dart';

void main() {
  FlavorConfig(
    name: "Prod",
    color: Colors.green,
    location: BannerLocation.bottomStart,
    variables: {
      "c": Colors.green,
      "baseUrl": "https://www.example.com",
    },
  );
  return runApp(MyApp());
}
