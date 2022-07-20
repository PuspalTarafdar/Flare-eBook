import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

final String text;
final void Function() press;
final double verticalPadding;
final double horizontalPadding;

  const RoundedButton({
    Key? key, 
    required this.text, 
    required this.press, 
    required this.verticalPadding, 
    required this.horizontalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(top: 150 ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        decoration: BoxDecoration(
          color: const Color.fromARGB(0, 255, 255, 255),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 3,
            color: Colors.white,
          ),
        ),
        child: Text(
          text,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'NanumMyeongjo'
        ),),
      ),
    );
  }
}
