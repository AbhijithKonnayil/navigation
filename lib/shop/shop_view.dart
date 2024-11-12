import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/shop_bloc.dart';

@RoutePage(name: 'ShopPageRoute')
class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.yellow,
          body: Center(
            child: Text("Shop"),
          ),
        );
      },
    );
  }
}
