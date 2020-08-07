import 'dart:convert';

import 'package:decorify/models/category.dart';
import 'package:http/http.dart' as http;

Future<List<Category>> fetchCategories() async {
  const String apiURL =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";
  final response = await http.get(apiURL);
  if (response.statusCode == 200) {
    List<Category> categories = (json.decode(response.body) as List)
        .map((e) => Category.fromJson(e))
        .toList();
    return categories;
  } else {
    throw Exception('Failed to load');
  }
}
