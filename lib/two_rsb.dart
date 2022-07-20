import 'package:flutter/material.dart';
import 'constants.dart';

class TwoRoundedSideButton extends StatelessWidget {
  final String text;
  final double radius;
  final void Function() press;

  const TwoRoundedSideButton({
    Key? key, 
    required this.text, 
    required this.radius, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical:10.0),
        decoration: BoxDecoration(
          color: knotwhite,
          border: Border.all(
            width: 2,
            color: knotwhite,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          )
        ),
        child: Text(text,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'NanumMyeongjo',
        )
        )
      ),
    );
  }
}
