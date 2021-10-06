import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:online_new_flutter/models/categories.dart';

Future<List<Category>> fetchCategories() async {
  const String apiUrl =
      "https://5f210aa9daa42f00l666535e.mockapi.io/api/categories";
  final response = await http.get(apiUrl);
  if (response.statusCode == 200) {
    List<category> categories = (json.decode(response.body) as List)
        .map((data) => category.fromJson(data))
        .toList();
    return categories;
  } else {
    throw Exception('failed to load');
  }
}
