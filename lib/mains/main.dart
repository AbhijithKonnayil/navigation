import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:navigation/account/bloc/account_bloc.dart';
import 'package:navigation/chat/bloc/chat_bloc.dart';
import 'package:navigation/home/bloc/home_bloc.dart';
import 'package:navigation/offer/bloc/offer_bloc.dart';
import 'package:navigation/offer/offer_provider.dart';
import 'package:navigation/routes/router.dart';
import 'package:navigation/shop/bloc/shop_bloc.dart';
import 'package:provider/provider.dart';

import '../base/bloc/base_bloc.dart';
import '../firebase_options.dart';

startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // var x = MockProduct();
  // print("verify");
  // verify(x.id);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BaseBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => ShopBloc(),
        ),
        BlocProvider(
          create: (context) => OfferBloc(),
        ),
        BlocProvider(
          create: (context) => AccountBloc(),
        ),
        BlocProvider(
          create: (context) => ChatBloc(),
        ),
      ],
      child: ChangeNotifierProvider(
        create: (context) => OfferProvider(),
        child: MaterialApp.router(
          showPerformanceOverlay: false,
          title: 'PR 13',
          theme: ThemeData(
              //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
              ),
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  final String title = "Title Bar";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _counter = 0;

  void _incrementCounter(BuildContext context) {
    AppRouter().pushNamed("/page2");
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlavorConfig.instance.variables["c"],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times: x',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
