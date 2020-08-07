import 'package:decorify/constants.dart';
import 'package:decorify/models/product.dart';
import 'package:decorify/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize * 37.5, //370
      width: SizeConfig.defaultSize * (SizeConfig.orientation == Orientation.landscape ? 35 : 15), //150
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            product.category.toUpperCase(),
            style: TextStyle(color: kTextColor.withOpacity(0.65)),
          ),
          SizedBox(height: SizeConfig.defaultSize),
          Text(
            product.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.defaultSize * 2.4, letterSpacing: -0.8, height: 1.4),
          ),
          SizedBox(height: SizeConfig.defaultSize * 2),
          Text(
            'FROM',
            style: TextStyle(color: kTextColor.withOpacity(0.65)),
          ),
          SizedBox(height: SizeConfig.defaultSize),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.defaultSize * 1.6,
              letterSpacing: -0.8,
              height: 1.6,
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize * 2),
          Text(
            'Available Colors',
            style: TextStyle(color: kTextColor.withOpacity(0.65)),
          ),
          ItemColorSelect(),
        ],
      ),
    );
  }
}

class ItemColorSelect extends StatefulWidget {
  const ItemColorSelect({
    Key key,
  }) : super(key: key);

  @override
  _ItemColorSelectState createState() => _ItemColorSelectState();
}

enum ItemColor { GREEN, GRAY, BLACK, AMBER }

class _ItemColorSelectState extends State<ItemColorSelect> {
  ItemColor _selectedColor; //= ItemColor.GREEN;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: SizeConfig.defaultSize * 2,
      runSpacing: SizeConfig.defaultSize / 4,
      alignment: WrapAlignment.end,
      runAlignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [
//        buildColorBox(color: Color(0xff7ba275), isActive: _selectedColor == ItemColor.GREEN ? true : false),
//        buildColorBox(color: Color(0xffd7d7d7), isActive: _selectedColor == ItemColor.GRAY ? true : false),
//        buildColorBox(color: kTextColor, isActive: _selectedColor == ItemColor.BLACK ? true : false),
        BoxColor(
          color: Color(0xff7ba275),
          isActive: _selectedColor == ItemColor.GREEN ? true : false,
          onPress: () {
            print(_selectedColor);
            setState(() {
              _selectedColor = ItemColor.GREEN;
            });
          },
        ),
        BoxColor(
          color: kTextColor,
          isActive: _selectedColor == ItemColor.BLACK ? true : false,
          onPress: () {
            print(_selectedColor);
            setState(() {
              _selectedColor = ItemColor.BLACK;
            });
          },
        ),
        BoxColor(
          color: Color(0xffd7d7d7),
          isActive: _selectedColor == ItemColor.GRAY ? true : false,
          onPress: () {
            print('Setting stat to gray');
            setState(() {
              _selectedColor = ItemColor.GRAY;
            });
          },
        ),
        BoxColor(
          color: Colors.amber,
          isActive: _selectedColor == ItemColor.AMBER ? true : false,
          onPress: () {
            print(_selectedColor);
            setState(() {
              _selectedColor = ItemColor.AMBER;
            });
          },
        ),
      ],
    );
  }

  Container buildColorBox({Color color, bool isActive}) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.defaultSize, right: SizeConfig.defaultSize),
      padding: const EdgeInsets.all(5),
      height: SizeConfig.defaultSize * 2.4,
      width: SizeConfig.defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color, //Color(0xff7ba275),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: isActive ? SvgPicture.asset('images/check.svg') : null,
    );
  }
}

class BoxColor extends StatelessWidget {
  final bool isActive;
  final Color color;
  final Function onPress;
  const BoxColor({this.isActive, this.color, this.onPress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: SizeConfig.defaultSize, right: SizeConfig.defaultSize),
        padding: const EdgeInsets.all(5),
        height: SizeConfig.defaultSize * 2.4,
        width: SizeConfig.defaultSize * 2.4,
        decoration: BoxDecoration(
          color: color, //Color(0xff7ba275),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: isActive ? SvgPicture.asset('images/check.svg') : null,
      ),
    );
  }
}
