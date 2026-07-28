import 'package:flutter/material.dart';

void main() {
  runApp(const AgentOneApp());
}

class AgentOneApp extends StatelessWidget {
  const AgentOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgentOne',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgentOne'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AgentOne is Ready',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}