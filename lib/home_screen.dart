
import 'package:e_reader_app/details_screen.dart';
import 'package:flutter/material.dart';
import 'reading_card.dart';
import 'constants.dart';
import 'todays_top_rated.dart';
import 'narrow_details_box.dart';
// ignore_for_file: prefer_const_constructors

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/home_screen.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "What are you \nReading",
                            style: TextStyle(
                              color: knotwhite,
                              fontSize: 30,
                              fontFamily: 'NanumMyeongjo',
                            ),
                          ),
                          TextSpan(
                            text: " Today?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 229, 203),
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'NanumMyeongjo',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingCard(
                          image: "images/book1.jpg",
                          title: 'Infinite Powers',
                          auth: 'Steven Stograz',
                          rating: 4.1,
                          pressdetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                          pressread: () {},
                        ),
                        ReadingCard(
                          image: "images/book5.jpg",
                          title: 'Homo Deus',
                          auth: 'Yuval Noah Harari',
                          rating: 4.5,
                          pressdetails: () {},
                          pressread: () {},
                        ),
                        ReadingCard(
                          image: "images/book4.jpg",
                          title: 'Thinking Fast and Slow',
                          auth: 'Daniel Kahneman',
                          rating: 4.4,
                          pressdetails: () {},
                          pressread: () {},
                        ),
                         ReadingCard(
                          image: "images/book6.jpg",
                          title: 'Give and Take',
                          auth: 'Adam Grant',
                          rating: 4.0,
                          pressdetails: () {},
                          pressread: () {},
                        ),
                         ReadingCard(
                          image: "images/book2.jpg",
                          title: 'Sapiens',
                          auth: 'Yuval Noah Harari',
                          rating: 4.5,
                          pressdetails: () {},
                          pressread: () {},
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: RichText(
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                text: "Today's ",
                                style: TextStyle(
                                    color: knotwhite,
                                    fontSize: 30,
                                    fontFamily: 'NanumMyeongjo'),
                              ),
                              TextSpan(
                                text: "top ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 229, 203),
                                  fontSize: 30,
                                  fontFamily: 'NanumMyeongjo',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              TextSpan(
                                text: "rated",
                                style: TextStyle(
                                    color: knotwhite,
                                    fontSize: 30,
                                    fontFamily: 'NanumMyeongjo'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  TodaysTopRated(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      top: 10,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: knotwhite,
                          fontSize: 30,
                          fontFamily: 'NanumMyeongjo',
                        ),
                        children: const [
                          TextSpan(text: "Continue "),
                          TextSpan(
                            text: 'Reading...',
                            style: TextStyle(
                              color: kyellowapp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: (){
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                },
                              ),
                            );
                    },
                    child: NarrowDetailsBox(
                      heading: 'Infinite Powers',
                      subheading: 'Steven Stograz',
                      progressbarwidth: 210,
                      padding:24,
                      headingfontsize: 20,
                      subheadingfontsize: 17,
                      image: "images/book1.jpg",
                      imagewidth: 38,
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

