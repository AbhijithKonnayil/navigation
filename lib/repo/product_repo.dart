// lib/data/repository/product_repository.dart
import '../models/products.dart';
import 'http_client.dart';

class ProductRepository {
  late final HttpClient _httpClient;

  ProductRepository([HttpClient? client]) {
    _httpClient = client ?? HttpClient();
  }

  // Fetch all products
  Future<List<Product>> fetchAllProducts() async {
    try {
      final response = await _httpClient.get('/products');
      if (response.statusCode != 200) {
        throw FormatException(response.statusMessage ?? 'Error');
      }
      List<dynamic> data = response.data;
      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
