import 'package:flutter/material.dart';

class MapLeme extends StatelessWidget {
  const MapLeme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 700,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(11, 103, 80, 164),
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: const Column(
        children: [
          Text(
            'Pontos turísticos de Leme-SP',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class MapLimeira extends StatelessWidget {
  const MapLimeira({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 700,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(11, 103, 80, 164),
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: const Column(
        children: [
          Text(
            'Pontos turísticos de Limeira-SP',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
