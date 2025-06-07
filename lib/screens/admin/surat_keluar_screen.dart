// lib/screens/admin/surat_keluar_screen.
import 'home_admin_screen.dart';
import 'package:flutter/material.dart';

class SuratKeluarScreen extends StatelessWidget {
  const SuratKeluarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Surat Keluar"),
        backgroundColor: const Color(0xFFF45C5C),
      ),
      body: ListView.builder(
        itemCount: 5, // Simulasi jumlah surat keluar
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: ListTile(
              title: Text("Surat Keluar ${index + 1}"),
              subtitle: Text("Nomor Surat: 67890${index + 1}"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Arahkan ke halaman detail surat keluar
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SuratKeluarDetailScreen()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class SuratKeluarDetailScreen extends StatelessWidget {
  const SuratKeluarDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Surat Keluar"),
        backgroundColor: const Color(0xFFF45C5C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Nomor Surat: 67890", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text("Tanggal: 02-01-2025", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text("Penerima: Dinas Keuangan", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text("Isi Ringkas Surat: Surat pemberitahuan ...", style: TextStyle(fontSize: 16)),
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
