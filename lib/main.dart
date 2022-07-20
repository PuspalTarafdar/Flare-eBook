import 'package:flutter/material.dart';
import 'rounded_button.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/WelcomeScreen.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(40.0),
              margin: const EdgeInsets.only(top: 220),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Flar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontFamily: 'NanumMyeongjo',
                        ),
                      ),
                      TextSpan(
                        text: "e",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 229, 203),
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NanumMyeongjo',
                        ),
                      ),
                      TextSpan(
                        text: "-book",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 229, 203),
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'NanumMyeongjo',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RoundedButton(
                text: 'Start Reading',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ),
                  );
                },
                verticalPadding: 0,
                horizontalPadding: 0)
          ],
        ),
      ),
    );
  }
}
