import 'package:decorify/components/title_text.dart';
import 'package:decorify/models/category.dart';
import 'package:decorify/screens/home/components/categories.dart';
import 'package:decorify/screens/home/components/recommended_products.dart';
import 'package:decorify/services/fetch_categories.dart';
import 'package:decorify/services/fetch_products.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //to allow scrolling
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
              child: TitleText(title: 'Browse by Category'),
            ),
            // FutureBuilder(
            //   future: fetchCategories(),
            //   //get the data from the API
            //   //wait till the data is available then build the widget
            //   builder: (context, snapshot) => snapshot.hasData
            //       ? Categories(
            //           categories: snapshot.data,
            //         )
            //       : Center(child: Image.asset('images/ripple.gif')),
            // ),
            Categories(categories: [category]),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * 2), //20.0
              child: TitleText(title: 'Recommended products'),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommendedProducts(products: snapshot.data)
                  : Center(
                      child: Image.asset('images/ripple.gif'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
