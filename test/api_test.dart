import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:navigation/models/products.dart';
import 'package:navigation/repo/http_client.dart';
import 'package:navigation/repo/product_repo.dart';

import 'api_test.mocks.dart';

@GenerateMocks([ProductRepository, HttpClient, Product])
void main() {
  var client = MockHttpClient();
  var repo = ProductRepository(client);

  group("REPO TEst", () {
    test("description", () async {
      when(client.get("/products")).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(),
            data: [
              // {
              //   "id": 1,
              //   "name": "travel",
              //   "description":
              //       "Right move Republican peace operation. Store response lot.",
              //   "price": "97580.22",
              //   "stock": 55,
              //   "image_url": "https://picsum.photos/443/754",
              //   "created_at": "2024-10-27T17:47:59.192997Z",
              //   "updated_at": "2024-10-27T17:47:59.193012Z"
              // }
            ],
            statusCode: 200);
      });
      var res = await repo.fetchAllProducts();

      expect(res.length, 0);
    });
    var x = verify(client.get("/products"));
    print(x);
    debugPrint("sdaf");
    test("test fail", () async {
      when(client.get("/products")).thenAnswer((_) async {
        return Response(
            requestOptions: RequestOptions(),
            statusMessage: "Invalid Req",
            data: [
              {
                "id": 1,
                "name": "travel",
                "description":
                    "Right move Republican peace operation. Store response lot.",
                "price": "97580.22",
                "stock": 55,
                "image_url": "https://picsum.photos/443/754",
                "created_at": "2024-10-27T17:47:59.192997Z",
                "updated_at": "2024-10-27T17:47:59.193012Z"
              }
            ],
            statusCode: 200);
      });

      expect(
          repo.fetchAllProducts(),
          throwsA(isA<FormatException>()
              .having((_) => _.message, "message", contains("Invalid Req"))));
    });
  });
  group("API Test", () {
    var repo = MockProductRepository();
    test("success", () async {
      when(repo.fetchAllProducts()).thenAnswer((i) async => [
            {
              "id": 1,
              "name": "travel",
              "description":
                  "Right move Republican peace operation. Store response lot.",
              "price": "97580.22",
              "stock": 55,
              "image_url": "https://picsum.photos/443/754",
              "created_at": "2024-10-27T17:47:59.192997Z",
              "updated_at": "2024-10-27T17:47:59.193012Z"
            }
          ].map((_) => Product.fromJson(_)).toList());
      var res = await repo.fetchAllProducts();
      expect(res, isA<List<Product>>());
      expect("travel", res[0].name);
    });
  });
}
