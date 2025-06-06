// lib/screens/admin/profil_admin_screen.dart
import 'package:flutter/material.dart';

class ProfilAdminScreen extends StatelessWidget {
  const ProfilAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String nama = 'Admin TU Fasilkom';
    const String nip = '19876543210';
    const String jabatan = 'Tata Usaha';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Admin TU'),
        backgroundColor: const Color(0xFFF45C5C), // Sesuaikan dengan desain
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar Admin
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                child: Icon(Icons.admin_panel_settings, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 32),

            // Nama Admin
            _buildProfileField("Nama", nama),
            const SizedBox(height: 16),

            // NIP Admin
            _buildProfileField("NIP", nip),
            const SizedBox(height: 16),

            // Jabatan Admin
            _buildProfileField("Jabatan", jabatan),
            const SizedBox(height: 32),

            // Tombol Logout yang terpusat
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst); // Logout dan kembali ke splash screen
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Color.fromARGB(255, 255, 13, 13)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text("Logout", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan field profil
  Widget _buildProfileField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
