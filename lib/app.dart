// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/first_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/second_page.dart';
import 'package:portfolio/pages/third_page.dart';
import 'package:portfolio/widgets/third_page_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white, fontSize: 16),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/first_page': (context) => FirstPage(),
        '/second_page': (context) => SecondPage(),
        '/third_page': (context) => ThirdPage()
      },
    );
  }
}
