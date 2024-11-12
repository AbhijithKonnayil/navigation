import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation/models/products.dart';

import '../repo/product_repo.dart';

class OfferProvider with ChangeNotifier {
  List<Product>? products;
  bool isLoading = false;
  int counter = 0;
  OfferProvider() {
    // Timer.periodic(Duration(seconds: 1), (_) {
    //   counter++;
    //   print(counter);
    //   notifyListeners();
    // });
  }
  Future<void> loadData() async {
    try {
      isLoading = true;
      await Future.delayed(Duration(seconds: 5));
      notifyListeners();
      products = await ProductRepository().fetchAllProducts();
      isLoading = false;
      notifyListeners();
    } catch (e) {}
  }
}
