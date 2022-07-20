import 'package:e_reader_app/constants.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';
import 'narrow_details_box.dart';

// ignore_for_file: prefer_const_constructors
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/detailsbackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                width: double.infinity,
                height: 245,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 24, top: 24),
                        height: 245,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          border: Border.all(
                            color: knotwhite,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 4),
                            Text(
                              "Infinite Powers",
                              style: TextStyle(
                                color: kyellowapp,
                                fontFamily: 'NanumMyeongjo',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Steven Stograz',
                              style: TextStyle(
                                  color: knotwhite,
                                  fontSize: 20,
                                  fontFamily: 'NanumMyeongjo'),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                BookRating(score: 4.1),
                                SizedBox(width: 10),
                                Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: knotwhite,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Read',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'NanumMyeongjo',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(0, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: knotwhite,
                                    width: 2,
                                  ),),
                              child: Center(
                                child: Text(
                                  'Make Notes',
                                  style: TextStyle(
                                    fontSize: 18,
                                    
                                    fontFamily: 'NanumMyeongjo',
                                    color: knotwhite,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      top: 25,
                      child: Image.asset(
                        "images/book1.jpg",
                        width: 160,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
              NarrowDetailsBox(
                heading: 'Chapter 1',
                subheading: 'Infinity',
                progressbarwidth: 400,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 17,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 2',
                subheading: 'The Man Who Harnessd Infinity',
                progressbarwidth: 400,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 3',
                subheading: 'Discovering The Laws of Motion',
                progressbarwidth: 400,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 4',
                subheading: 'The Dawn of Differential Calculus',
                progressbarwidth: 120,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 5',
                subheading: 'The CrossRoads',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
               NarrowDetailsBox(
                heading: 'Chapter 6',
                subheading: 'The Vocabulary of Change',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 17,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 7',
                subheading: 'The Secret Fountain',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 8',
                subheading: 'Fictions of the Mind',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 9',
                subheading: 'The Logical Universe',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
              NarrowDetailsBox(
                heading: 'Chapter 10',
                subheading: 'Making Waves',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
               NarrowDetailsBox(
                heading: 'Chapter 11',
                subheading: 'The Future of Calculus',
                progressbarwidth: 0,
                padding: 10,
                headingfontsize: 20,
                subheadingfontsize: 15,
                image: "images/book1.jpg",
                imagewidth: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
