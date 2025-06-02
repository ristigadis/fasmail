// lib/screens/shared/splash_screen.dart
import 'package:flutter/material.dart';
import 'role_selection_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RoleSelectionScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoFasMail(),
      ),
    );
  }
}

class LogoFasMail extends StatelessWidget {
  const LogoFasMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(Icons.mark_email_read_rounded, color: Color(0xFFF45C5C), size: 36),
        SizedBox(width: 10),
        Text("FasMail",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFFF45C5C))),
      ],
    );
  }
}
