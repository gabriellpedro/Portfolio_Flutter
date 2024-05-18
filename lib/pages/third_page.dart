import 'package:flutter/material.dart';
import 'package:portfolio/widgets/third_page_widget.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
        centerTitle: true,
      ),
      body: Container(
        child: ContactWidget(),
      ),
    );
  }
}
