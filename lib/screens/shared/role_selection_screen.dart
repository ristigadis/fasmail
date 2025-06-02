// lib/screens/shared/role_selection_screen.dart
import 'package:flutter/material.dart';
import '../mahasiswa/login_mahasiswa_screen.dart';
import '../admin/login_admin_screen.dart';
import '../mahasiswa/register_screen.dart'; // pastikan file ini ada dan path benar



class LogoFasMail extends StatelessWidget {
  const LogoFasMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: 279, // atur ukuran sesuai figma
    );
  }
}

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoFasMail(),
            FlutterLogo(size: 279), // Placeholder for LogoFasMail
            const SizedBox(height: 40),
            const Text("Masuk Sebagai", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            buildRoleButton("Admin TU", context, const LoginAdminScreen()),
            const SizedBox(height: 16),
            buildRoleButton("Mahasiswa", context, const LoginMahasiswaScreen()),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen())); // Pastikan RegisterScreen adalah nama kelas yang benar di register_screen.dart
              },
              child: Column(
                children: const [
                  Text("Belum punya akun?", style: TextStyle(color: Colors.black87)),
                  SizedBox(height: 4),
                  Text("Register", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRoleButton(String label, BuildContext context, Widget target) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => target)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF45C5C),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
