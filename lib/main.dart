import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stopwatch/ui/stopwatch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: AspectRatio(
              aspectRatio: 0.85,
              child: Stopwatch(),
            ),
          ),
        ),
      ),
    );
  }
}
