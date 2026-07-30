import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

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
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}