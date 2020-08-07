import 'package:decorify/components/title_text.dart';
import 'package:decorify/constants.dart';
import 'package:decorify/models/product.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function onTap;
  ProductCard({@required this.product, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        width: SizeConfig.defaultSize * 14.5, //145
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'images/spinner.gif',
                    image: product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
                child: TitleText(title: product.title),
              ),
              SizedBox(height: SizeConfig.defaultSize / 2),
              Text('\$${product.price}'),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
