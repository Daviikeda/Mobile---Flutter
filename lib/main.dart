import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const GunnersApp());
}

class GunnersApp extends StatelessWidget {
  const GunnersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gunners App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFEF0107),
          primary: const Color(0xFFEF0107),
          secondary: const Color(0xFF063672),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: const HomePage(),
    );
  }
}
