import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/offer/offer_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/products.dart';

@RoutePage(name: 'OfferPageRoute')
class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<OfferProvider>()..loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (_, i) {
      var p = context.watch<OfferProvider>().products?[i];
      var p2 = Provider.of<OfferProvider>(context).products?[i];
      if (p == null)
        return CircularProgressIndicator(
          color: Colors.yellow,
        );
      return ProductCard(product: p);
    }));
    return Scaffold(
      body: Center(
        child: Text(context.watch<OfferProvider>().counter.toString()),
      ),
    );
    return Consumer<OfferProvider>(
      builder: (context, provider, w) {
        if (provider.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          child: Scaffold(body: ListView.builder(itemBuilder: (_, i) {
            return ProductCard(product: provider.products![i]);
          })),
        );
      },
    );
  }
}
