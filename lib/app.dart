// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/first_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/second_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // textTheme: GoogleFonts.righteousTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/first_page': (context) => FirstPage(),
        '/second_page': (context) => SecondPage()
      },
    );
  }
}
