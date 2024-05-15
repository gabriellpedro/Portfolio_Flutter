import 'package:flutter/material.dart';
import 'package:portfolio/widgets/first_page_widget.dart';

import '../texts/texts.dart';

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
              child: MapAll(
                textManagerBody: TextManagerLeme().getText(),
                textManagerTitle: TextManagerTitleLeme().getText(),
              ),
            ),
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: MapAll(
                textManagerBody: TextManagerLimeira().getText(),
                textManagerTitle: TextManagerTitleLimeira().getText(),
              ),
            ),
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: MapAll(
                textManagerBody: TextManagerBodyPocos().getText(),
                textManagerTitle: TextManagerTitlePocos().getText(),
              ),
            ),
            Container(
              color: Colors.white60,
              alignment: Alignment.center,
              child: MapAll(
                textManagerBody: TextManagerBodyGuaruja().getText(),
                textManagerTitle: TextManagerTitleGuaruja().getText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
