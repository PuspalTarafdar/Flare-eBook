import 'package:flutter/material.dart';
import 'constants.dart';
class BookRating extends StatelessWidget {
  final double score;
  

  const BookRating({
    Key? key, required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color:  Colors.green,
            width: 1.5,),
          ),
      
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                const Icon(Icons.star,
                color: Color.fromARGB(255, 255, 229, 203),
                size: 15,),
                const SizedBox(height: 5),
                Text('$score',
                style: const TextStyle(
                  color: knotwhite,
                  fontFamily: 'NanumMyeongjo',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
              ]
            ),
          ),
    );
  }
}
