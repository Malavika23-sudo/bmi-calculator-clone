import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/Screens/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // add 0xFF before the hexcode of colors to use ut in flutter.
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        //accentColor: Colors.purple,
        //textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => InputPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    );
  }
}

// theme: ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: Color(0xFF090C22),
//   scaffoldBackgroundColor: Color(0xFF090C22),
//   accentColor: Colors.purple,
//   //fontFamily: 'Georgia',
//   textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)
//       // headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//       // headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//       // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//       ),
// ),
