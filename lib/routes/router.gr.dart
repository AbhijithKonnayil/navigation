// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    OneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnePage(),
      );
    },
    MyWidgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyWidgetPage(),
      );
    },
    Route2Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Page2Screen(),
      );
    },
    Page2R.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Page2(),
      );
    },
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>(
          orElse: () => const MyHomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyHomePage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [OnePage]
class OneRoute extends PageRouteInfo<void> {
  const OneRoute({List<PageRouteInfo>? children})
      : super(
          OneRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyWidgetPage]
class MyWidgetRoute extends PageRouteInfo<void> {
  const MyWidgetRoute({List<PageRouteInfo>? children})
      : super(
          MyWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWidgetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Page2Screen]
class Route2Route extends PageRouteInfo<void> {
  const Route2Route({List<PageRouteInfo>? children})
      : super(
          Route2Route.name,
          initialChildren: children,
        );

  static const String name = 'Route2Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Page2]
class Page2R extends PageRouteInfo<void> {
  const Page2R({List<PageRouteInfo>? children})
      : super(
          Page2R.name,
          initialChildren: children,
        );

  static const String name = 'Page2R';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyHomeRoute.name,
          args: MyHomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<MyHomeRouteArgs> page = PageInfo<MyHomeRouteArgs>(name);
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key}';
  }
}
