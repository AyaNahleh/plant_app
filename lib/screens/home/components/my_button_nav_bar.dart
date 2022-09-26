import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
class MyButtonNavBar extends StatelessWidget {
  const MyButtonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.2),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/flower.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/sun.svg'),
          ),
        ],
      ),
    );
  }
}
