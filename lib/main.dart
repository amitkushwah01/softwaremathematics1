import 'package:flutter/material.dart';
import 'package:softwaremathematics1/Screens/FirstScreen.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.amber
      ),home: First(),
    );
  }
}