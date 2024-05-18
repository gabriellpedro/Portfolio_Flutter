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
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Leme-SP',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Tab(
                child: Text(
                  'Limeira-SP',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Tab(
                child: Text(
                  'Poços de Caldas-MG',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Tab(
                child: Text(
                  'Guarujá-SP',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Colors.white60,
                alignment: Alignment.center,
                child: MapAll(
                  textManagerBody: TextManagerLeme().getText(),
                  textManagerTitle: TextManagerTitleLeme().getText(),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.white60,
                alignment: Alignment.center,
                child: MapAll(
                  textManagerBody: TextManagerLimeira().getText(),
                  textManagerTitle: TextManagerTitleLimeira().getText(),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.white60,
                alignment: Alignment.center,
                child: MapAll(
                  textManagerBody: TextManagerBodyPocos().getText(),
                  textManagerTitle: TextManagerTitlePocos().getText(),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.white60,
                alignment: Alignment.center,
                child: MapAll(
                  textManagerBody: TextManagerBodyGuaruja().getText(),
                  textManagerTitle: TextManagerTitleGuaruja().getText(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
