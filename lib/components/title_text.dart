import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize; //it has been init in the parent widget
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6, //16
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
