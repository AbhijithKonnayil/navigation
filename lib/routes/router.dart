import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../mains/main.dart';
import '../page1.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  static final instance = AppRouter._();
  factory AppRouter() {
    return instance;
  }

  AppRouter._();

  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, initial: true),
        AutoRoute(page: Page2R.page, path: '/page2')
      ];
}
