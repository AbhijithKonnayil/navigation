import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("Page 1"),
    ));
  }
}

@RoutePage()
class MyWidgetPage extends StatelessWidget {
  const MyWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

@RoutePage()
class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

@RoutePage(name: 'Page2R')
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Page 2")),
    );
  }
}
