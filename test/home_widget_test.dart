import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:navigation/home/bloc/home_bloc.dart';
import 'package:navigation/home/home_view.dart';
import 'package:navigation/mains/api_test.mocks.dart';

void main() {
  testWidgets("Test home widgets", (tester) async {
    var client = MockHttpClient();

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
    await tester.pumpWidget(MaterialApp(
      home: BlocProvider(create: (_) => HomeBloc(), child: HomeView()),
    ));

    // Allow the widget tree to settle

    // Check if the HomeView widget is found
    expect(find.text("Init"), findsOneWidget);

    // Example: Check for a specific widget inside HomeView
    // This assumes HomeView contains a Text widget with this text
    // expect(find.text('Welcome to Home View'),
    //     findsOneWidget); // Change this to your actual text
  });
}
