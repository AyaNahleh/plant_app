import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key, @required this.title, @required this.press,
  }) : super(key: key);
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
      child: Row(

        children: <Widget>[
          TitleWithSearchBox(text: title),
          const Spacer(),
          TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            ),
            onPressed: press,
            child: const Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithSearchBox extends StatelessWidget {
  const TitleWithSearchBox({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 19, left: 10),
      height: 54,
      child: Stack(

        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
