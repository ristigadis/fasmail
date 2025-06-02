// lib/screens/mahasiswa/profil_mahasiswa_screen.dart
import 'package:flutter/material.dart';

class ProfilMahasiswaScreen extends StatelessWidget {
  const ProfilMahasiswaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const nama = 'Gendis Safira';
    const nim = '21.01.1234';
    const fakultas = 'Fasilkom';

    return Scaffold(
      appBar: AppBar(title: const Text('Profil'), backgroundColor: const Color(0xFFFF4F4F)),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, backgroundColor: Colors.red, child: Icon(Icons.person, size: 50, color: Colors.white)),
            const SizedBox(height: 32),
            TextField(readOnly: true, decoration: const InputDecoration(labelText: 'Nama', hintText: nama)),
            const SizedBox(height: 16),
            TextField(readOnly: true, decoration: const InputDecoration(labelText: 'NIM', hintText: nim)),
            const SizedBox(height: 16),
            TextField(readOnly: true, decoration: const InputDecoration(labelText: 'Fakultas', hintText: fakultas)),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst); // logout
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
