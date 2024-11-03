import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
      ),
      body: Container(
        child: const Center(
          child: Text('MainScreen'),
        ),
      ),
    );
  }
}
