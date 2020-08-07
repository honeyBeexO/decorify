import 'package:decorify/models/product.dart';
import 'package:decorify/screens/details/components/product_description.dart';
import 'package:decorify/screens/details/components/product_info.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape ? SizeConfig.screenWidth : SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(product: product),
            Positioned(
              top: SizeConfig.defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                onTap: () {},
              ),
            ),
            Positioned(
              top: SizeConfig.defaultSize * 9.5,
              right: -SizeConfig.defaultSize * 3.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: SizeConfig.defaultSize * 37.8, //378
                  width: SizeConfig.defaultSize * 36.4, //364
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
