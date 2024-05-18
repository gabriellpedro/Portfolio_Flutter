// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/second_page_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<SecondPage> {
  int _selectIndex = 0;

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
        yValues: [3, 1.5, 1.8, 3.6, 2.7, 4.5, 5],
      ),
    ),
    Container(
      color: Colors.white10,
      alignment: Alignment.center,
      child: MapWidget(
        xValues: [0, 1, 2, 4, 5, 6, 7],
        yValues: [3, 1.5, 1.8, 3.6, 2.7, 4.5, 5],
      ),
    ),
    Container(
      color: Colors.pink.shade100,
      alignment: Alignment.center,
      child: const Text('User'),
    ),
  ];

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
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(
            () {
              _selectIndex = index;
            },
          );
        },
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
    );
  }
}
