// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomePage',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.radio_button_on_outlined),
                title: Text('First Page'),
                subtitle: Text(
                  'Clique aqui para navegar para a primeira página.',
                ),
                trailing: Icon(
                  Icons.arrow_right_sharp,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/first_page');
                },
              ),
              ListTile(
                leading: Icon(Icons.radio_button_on_outlined),
                title: Text('Second Page'),
                subtitle: Text(
                  'Clique aqui para navegar para a segunda página.',
                ),
                trailing: Icon(
                  Icons.arrow_right_sharp,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/second_page');
                },
              ),
              ListTile(
                leading: Icon(Icons.radio_button_on_outlined),
                title: Text('Third Page'),
                subtitle: Text(
                  'Clique aqui para navegar para a terceira página.',
                ),
                trailing: Icon(
                  Icons.arrow_right_sharp,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/third_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
