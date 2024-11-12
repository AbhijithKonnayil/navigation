import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/routes/router.dart';

import 'bloc/base_bloc.dart';

@RoutePage(name: 'BasePageRoute')
class BaseView extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc, BaseState>(
      builder: (context, state) {
        return AutoTabsRouter.pageView(
            routes: const [
              HomePageRoute(),
              ShopPageRoute(),
              OfferPageRoute(),
              ChatPageRoute(),
              AccountPageRoute()
            ],
            builder: (context, child, pgController) {
              final tabsRouter = AutoTabsRouter.of(context);
              return Scaffold(
                body: child,
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: tabsRouter.activeIndex,
                  onTap: (index) {
                    tabsRouter.setActiveIndex(index);
                  },
                  items: [
                    {"icon": Icons.home, "label": "Home"},
                    {"icon": Icons.shop, "label": "Chat"},
                    {"icon": Icons.offline_pin_rounded, "label": "Offer"},
                    {"icon": Icons.chat, "label": "Chat"},
                    {"icon": Icons.person, "label": "Account"},
                  ].map<BottomNavigationBarItem>((_) {
                    return BottomNavigationBarItem(
                        icon: Icon(
                          _["icon"] as IconData,
                        ),
                        label: "");
                  }).toList(),
                ),
              );
            });
      },
    );
  }
}
