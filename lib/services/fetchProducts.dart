// ignore: file_names
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:online_new_flutter/models/product.dart';

//fetch product from API
Future<List<Product>> fetchproducts() async {
  const String apiUrl =
      "https://5f210aagdaa42f001666535e.mockapi.io/api/products";
  final response = await https.get(apiUrl);
  if (response.statusCode == 200) {
    List<product> products = (json.decode(response.body) as List)
        .map((data) => product.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception('failed to load');
  }
}
