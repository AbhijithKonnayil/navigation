import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'mains/main.dart';

void main() {
    FlavorConfig(
        name: "Stg",
        color: Colors.red,
        location: BannerLocation.bottomStart,
        variables: {
            "c": Colors.red,
            "baseUrl": "https://www.example.com",
        },
    );
    return runApp(MyApp());
}