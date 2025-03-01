import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget? body;
  const AppScaffold({this.title, this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      body: body,
    );
  }
}
