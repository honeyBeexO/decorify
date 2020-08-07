import 'package:decorify/models/category.dart';
import 'package:decorify/screens/home/components/category_card.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;
  Categories({@required this.categories});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(category: categories[index]),
        ),
//          CategoryCard(category: category),
//          CategoryCard(category: category),
      ),
    );
  }
}
