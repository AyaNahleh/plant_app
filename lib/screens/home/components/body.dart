import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'Recommended',
            press: () {},
          ),
          const RecommendsPlants(),
          TitleWithMoreButton(
            title: 'Featured Plants',
            press: () {},
          ),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
