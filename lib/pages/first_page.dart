import 'package:flutter/material.dart';
import 'package:portfolio/widgets/first_page_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cidades para turismo',
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Leme-SP'),
              ),
              Tab(
                child: Text('Limeira-SP'),
              ),
              Tab(
                child: Text('Poços de Caldas-MG'),
              ),
              Tab(
                child: Text('Guarujá-SP'),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: const MapLeme(),
            ),
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: const MapLimeira(),
            ),
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: const Text('Conteúdo Tab Tres'),
            ),
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: const Text('Conteúdo Tab Quatro'),
            ),
          ],
        ),
      ),
    );
  }
}
