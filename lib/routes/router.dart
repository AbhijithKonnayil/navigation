import 'package:auto_route/auto_route.dart';
import 'package:navigation/base/base_view.dart';
import 'package:navigation/chat/chat_view.dart';
import 'package:navigation/shop/shop_view.dart';

import '../account/account_view.dart';
import '../home/home_view.dart';
import '../mains/main.dart';
import '../offer/offer_view.dart';
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
        AutoRoute(
          page: MyHomeRoute.page,
        ),
        AutoRoute(page: BasePageRoute.page, initial: true, children: [
          AutoRoute(
            page: HomePageRoute.page,
          ),
          AutoRoute(page: ShopPageRoute.page),
          AutoRoute(
            page: OfferPageRoute.page,
          ),
          AutoRoute(
            page: ChatPageRoute.page,
          ),
          AutoRoute(
            page: AccountPageRoute.page,
          ),
        ]),
        AutoRoute(page: Page2R.page, path: '/page2'),
      ];
}
