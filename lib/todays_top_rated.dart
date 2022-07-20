import 'package:flutter/material.dart';
import 'two_rsb.dart';
import 'constants.dart';
import 'book_rating.dart';

// ignore_for_file: prefer_const_constructors
class TodaysTopRated extends StatelessWidget {
  const TodaysTopRated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 18, top: 24),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Best book of 19th July 2022",
                    style: TextStyle(
                      color: kyellowapp,
                      fontFamily: 'NanumMyeongjo',
                      fontSize: 15.5,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Good Economics \nfor Hard Times",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'NanumMyeongjo',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Abhijit Banerjee & Esther Duflo',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'NanumMyeongjo'),
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: const <Widget>[
                      BookRating(score: 4.5),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Banerjee and Duflo talks\nabout new developments\nin economics research...',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NanumMyeongjo',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 3,
            top: 0,
            child: Image.asset(
              "images/book7.jpg",
              width: 140,
              height: 160,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: 101,
              child: TwoRoundedSideButton(
                text: 'Read',
                radius: 29,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
