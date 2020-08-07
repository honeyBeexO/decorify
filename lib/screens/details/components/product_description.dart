import 'package:decorify/constants.dart';
import 'package:decorify/models/product.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.onTap,
  }) : super(key: key);

  final Product product;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: SizeConfig.defaultSize * 44, //440
      ),
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * 9,
        left: SizeConfig.defaultSize * 2,
        right: SizeConfig.defaultSize * 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.defaultSize * 1.2),
          topRight: Radius.circular(SizeConfig.defaultSize * 1.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle,
            style: TextStyle(
              fontSize: SizeConfig.defaultSize * 1.8,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize * 3),
          Text(
            product.description,
            style: TextStyle(
              color: kTextColor.withOpacity(0.65),
              height: 2.321,
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize * 3),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.all(SizeConfig.defaultSize * 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              onPressed: onTap ??
                  () {
                    print('default function');
                  },
              color: kPrimaryColor,
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.defaultSize * 1.6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
