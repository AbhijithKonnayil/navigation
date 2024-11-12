// lib/data/repository/product_repository.dart
import '../models/products.dart';
import 'http_client.dart';

class L0Repository {
  late final HttpClient _httpClient;

  L0Repository([HttpClient? client]) {
    _httpClient = client ?? HttpClient();
  }

  // Fetch all products
  Future<List<Product>> fetchAll() async {
    try {
      final response = await _httpClient.get('/l0');
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
