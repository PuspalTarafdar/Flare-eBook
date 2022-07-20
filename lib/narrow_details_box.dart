import 'package:flutter/material.dart';
import 'constants.dart';
// ignore_for_file: prefer_const_constructors
class NarrowDetailsBox extends StatelessWidget {
  final String heading;
  final String subheading;
  final double progressbarwidth;
  final double padding;
  final double headingfontsize;
  final double subheadingfontsize;
  final String image;
  final double imagewidth;
  const NarrowDetailsBox({
    Key? key, required this.heading, 
    required this.subheading, 
    required this.progressbarwidth, 
    required this.padding, 
    required this.headingfontsize, 
    required this.subheadingfontsize, 
    required this.image, 
    required this.imagewidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: padding, horizontal: 24),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(0, 255, 255, 255),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: knotwhite, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 13.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children:  <Widget>[
                                      Text(
                                        heading,
                                        style: TextStyle(
                                          fontWeight:
                                              FontWeight.bold,
                                          fontFamily:
                                              'NanumMyeongjo',
                                          color: knotwhite,
                                          fontSize: headingfontsize,
                                        ),
                                      ),
                                      Text(subheading,
                                          style: TextStyle(
                                            color: knotwhite,
                                            fontFamily:
                                                'NanumMyeongjo',
                                            fontSize: subheadingfontsize,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset(image,
                                
                                width: imagewidth,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 7,
                width: progressbarwidth,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 134, 74),
                  borderRadius: BorderRadius.circular(7),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
