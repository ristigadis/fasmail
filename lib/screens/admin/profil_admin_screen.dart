// lib/screens/admin/profil_admin_screen.dart
import 'package:flutter/material.dart';

class ProfilAdminScreen extends StatelessWidget {
  const ProfilAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = 'Admin TU Fasilkom';
    final String nip = '19876543210';
    final String jabatan = 'Tata Usaha';

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Admin')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              child: Icon(Icons.admin_panel_settings, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            TextField(readOnly: true, decoration: InputDecoration(labelText: 'Nama', hintText: nama)),
            const SizedBox(height: 10),
            TextField(readOnly: true, decoration: InputDecoration(labelText: 'NIP', hintText: nip)),
            const SizedBox(height: 10),
            TextField(readOnly: true, decoration: InputDecoration(labelText: 'Jabatan', hintText: jabatan)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst); // logout ke splash
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
