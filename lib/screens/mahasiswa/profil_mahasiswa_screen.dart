// lib/screens/mahasiswa/profil_mahasiswa_screen.dart
import 'package:flutter/material.dart';

class ProfilMahasiswaScreen extends StatelessWidget {
  const ProfilMahasiswaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data yang akan ditampilkan di profil
    const String nama = 'Gendis Safira Ardana';
    const String nim = '21.01.1234';
    const String prodi = 'Bioteknologi';
    const String email = 'gendis.safira@example.com';  // Contoh email

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: const Color(0xFFF45C5C), // Sesuaikan dengan desain figma
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar Mahasiswa
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 32),

            // Nama Mahasiswa
            _buildProfileField("Nama", nama),
            const SizedBox(height: 16),

            // NIM Mahasiswa
            _buildProfileField("NIM", nim),
            const SizedBox(height: 16),

            // Program Studi
            _buildProfileField("Program Studi", prodi),
            const SizedBox(height: 16),

            // Email Mahasiswa
            _buildProfileField("Email", email), // Informasi tambahan
            const SizedBox(height: 32),

            // Tombol Logout
             Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst); // Logout dan kembali ke splash screen
                },
               style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color.fromARGB(255, 255, 13, 13)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text("Logout", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold)),
              ),
             )
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
