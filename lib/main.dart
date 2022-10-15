import 'package:flutter/material.dart';
import './homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: const [
            //BackgroudCurveWidget(),
            //CardsStackWidget(),
            TopNav(),
          ],
        ),
      ),
    );
  }
}
