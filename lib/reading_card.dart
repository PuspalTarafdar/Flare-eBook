// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'book_rating.dart';
import 'two_rsb.dart';
import 'constants.dart';

class ReadingCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final void Function() pressdetails;
  final void Function() pressread;

  const ReadingCard({
    Key? key,
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressdetails,
    required this.pressread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 255, 255, 255),
                border: Border.all(
                  color: knotwhite,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(29),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(image, width: 120, height: 160),
          ),
          Positioned(
            top: 33,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 165,
            child: SizedBox(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'NanumMyeongjo',
                              fontWeight: FontWeight.bold,
                              color: kyellowapp,
                            ),
                          ),
                          TextSpan(
                            text: auth,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NanumMyeongjo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressdetails,
                        child: Container(
                          width: 101,
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          alignment: Alignment.center,
                          child: const Text(
                            "Details",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'NanumMyeongjo'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TwoRoundedSideButton(
                          text: 'Read',
                          radius: 29,
                          press: pressread,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
