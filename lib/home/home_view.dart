import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/widgets/products.dart';

import '../widgets/scaffold.dart';
import 'bloc/home_bloc.dart';

@RoutePage(name: 'HomePageRoute')
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // return AppScaffold(
    //   body: Center(
    //     child: Text("1"),
    //   ),
    // );
    var a = context.read<HomeBloc>();
    var b = BlocProvider.of<HomeBloc>(context);
    print(a.hashCode);
    print(b.hashCode);
    return AppScaffold(
        title: 'Home',
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              print("state L: $state");
              if (state is HomesuccessState) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("dsdsf")));
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
              var x = context.read<HomeBloc>();
              var y = BlocProvider.of<HomeBloc>(context);
              print("state B: $state");
              if (state is Loading) {
                return CircularProgressIndicator();
              } else if (state is Success) {
                state as HomesuccessState;
                return ListView.builder(itemBuilder: (_, i) {
                  return ProductCard(product: state.data[i]);
                });
              } else if (state is Fail) {
                return Text("fail");
              }
              return Container(
                child: Text("Init"),
              );
            }),
          ),
        ));
  }
}
