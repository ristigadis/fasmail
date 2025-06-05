// lib/screens/shared/role_selection_screen.dart
import 'package:flutter/material.dart';
import '../mahasiswa/login_mahasiswa_screen.dart' as mahasiswa;
import '../admin/login_admin_screen.dart' as admin;
import '../mahasiswa/register_screen.dart'; // pastikan file ini ada


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
            const mahasiswa.LogoFasMail(), // pastikan widget ini tersedia
            const SizedBox(height: 40),
            const Text("Masuk Sebagai", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            buildRoleButton("Admin TU", context, const admin.LoginAdminScreen(), Colors.black),
            const SizedBox(height: 16),
            buildRoleButton("Mahasiswa", context, const mahasiswa.LoginMahasiswaScreen(), Colors.black),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen()));
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

  Widget buildRoleButton(String label, BuildContext context, Widget target, Color textColor) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => target)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF45C5C),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: textColor)),
      ),
    );
  }
}
