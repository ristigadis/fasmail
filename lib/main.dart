// lib/main.dart
import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const FasMailApp());
}

class FasMailApp extends StatelessWidget {
  const FasMailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FasMail',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}
