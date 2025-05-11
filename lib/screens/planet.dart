import 'package:flutter/material.dart';

class PlanetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Планета'),
        backgroundColor: Color(0xFF6C63FF), // Фиолетовый
      ),
      body: Center(
        child: Image.asset('assets/rocket1.jpg'),
      ),
    );
  }
}