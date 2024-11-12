import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/account_bloc.dart';

@RoutePage(name: "AccountPageRoute")
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.red,
          body: Center(
            child: Text("Account"),
          ),
        );
      },
    );
  }
}
