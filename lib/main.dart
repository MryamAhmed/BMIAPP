import 'package:flutter/material.dart';

import 'modules/bmi/BMI_screen.dart';


void main() {
  runApp(MyApp());
}


//class myapp
class MyApp extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI_screen(),
    );
  }
}