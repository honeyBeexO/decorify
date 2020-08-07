import 'dart:convert';

import 'package:decorify/models/product.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> fetchProducts() async {
  const String apiURL =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/products";
  final response = await http.get(apiURL);
  if (response.statusCode == 200) {
    List<Product> _products = (json.decode(response.body) as List)
        .map((jsonProduct) => Product.fromJson(jsonProduct))
        .toList();
    return _products;
  } else {
    throw Exception('Faild to load ${response.statusCode}');
  }
}
