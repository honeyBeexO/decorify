import 'package:decorify/models/product.dart';
import 'package:decorify/screens/details/details_screen.dart';
import 'package:decorify/screens/home/components/product_card.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';

class RecommendedProducts extends StatelessWidget {
  //We get these products from API
  final List<Product> products;
  const RecommendedProducts({this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: this.products.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  product: products[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
