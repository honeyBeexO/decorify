import 'package:decorify/constants.dart';
import 'package:decorify/models/product.dart';
import 'package:decorify/screens/details/components/body.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    @required this.product,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Body(
          product: this.product,
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          'images/arrow-long-left.svg',
          height: SizeConfig.defaultSize * 2.0, //20
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'images/bag.svg',
                height: SizeConfig.defaultSize * 2.4, //24
              ),
              onPressed: () {},
            ),
            Positioned(
              bottom: SizeConfig.defaultSize * 1.5,
              right: SizeConfig.defaultSize,
              child: Container(
                width: 14.0,
                height: 14.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
        Center(child: Text('Bag', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold))),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}
