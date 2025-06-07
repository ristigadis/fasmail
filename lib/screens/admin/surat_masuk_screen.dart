// lib/screens/admin/surat_masuk_screen.dart
import 'home_admin_screen.dart';
import 'package:flutter/material.dart';

class SuratMasukScreen extends StatelessWidget {
  const SuratMasukScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Surat Masuk"),
        backgroundColor: const Color(0xFFF45C5C),
      ),
      body: ListView.builder(
        itemCount: 5, // Simulasi jumlah surat masuk
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: ListTile(
              title: Text("Surat Masuk ${index + 1}"),
              subtitle: Text("Nomor Surat: 12345${index + 1}"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Arahkan ke halaman detail surat masuk
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SuratMasukDetailScreen()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class SuratMasukDetailScreen extends StatelessWidget {
  const SuratMasukDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Surat Masuk"),
        backgroundColor: const Color(0xFFF45C5C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Nomor Surat: 12345", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text("Tanggal: 01-01-2025", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text("Pengirim: Dinas Pendidikan", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text("Isi Ringkas Surat: Surat permohonan izin ...", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Bisa menambahkan aksi jika diperlukan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF45C5C),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text("Kembali", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
