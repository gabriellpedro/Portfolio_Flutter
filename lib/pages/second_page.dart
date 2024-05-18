// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/second_page_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<SecondPage> {
  List<Widget> pages = [
    Container(
      color: Colors.white10,
      alignment: Alignment.center,
      child: MapWidget(
        xValues: [0, 1, 2, 4, 5, 6, 7],
        yValues: [3, 1.5, 1.8, 3.6, 2.7, 4.5, 5],
      ),
    ),
    Container(
      color: Colors.white10,
      alignment: Alignment.center,
      child: MapWidget(
        xValues: [0, 2, 3, 5, 7, 8, 9],
        yValues: [3, 2.5, 1.8, 4.6, 2.7, 4.5, 5],
      ),
    ),
    Container(
      color: Colors.white10,
      alignment: Alignment.center,
      child: MapWidget(
        xValues: [3, 6, 9, 12, 15, 18, 20],
        yValues: [4, 3, 1.8, 5.6, 6.7, 5.5, 9],
      ),
    ),
  ];
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gráficos",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: pages[_selectIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.red,
          indicatorColor: Colors.white,
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                );
              }
              return const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
              );
            },
          ),
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const IconThemeData(color: Colors.black);
              }
              return const IconThemeData(color: Colors.black);
            },
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) {
            setState(
              () {
                _selectIndex = index;
              },
            );
          },
          selectedIndex: _selectIndex,
          destinations: [
            const NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined),
              selectedIcon: Icon(Icons.calendar_month),
              label: '7 dias',
            ),
            const NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined),
              selectedIcon: Icon(Icons.calendar_month),
              label: '15 dias',
            ),
            const NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined),
              selectedIcon: Icon(Icons.calendar_month),
              label: '30 dias',
            ),
          ],
        ),
      ),
    );
  }
}
