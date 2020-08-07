import 'package:decorify/constants.dart';
import 'package:decorify/screens/home/components/body.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.height);
    SizeConfig.init(context);
    return Scaffold(
      appBar: _buildAppBar(),
      body: Body(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset(
            'images/menu.svg',
            height: SizeConfig.defaultSize * 2.0, //20
          ),
          onPressed: () {}),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'images/scan.svg',
            height: SizeConfig.defaultSize * 2.4, //24
          ),
          onPressed: () {},
        ),
        Center(child: Text('scan', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold))),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}
