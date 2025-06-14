import 'package:flutter/material.dart';
import 'package:temp/features/auth/presentation/views/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Shared Vehicles",
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
  }
}
