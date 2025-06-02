// lib/screens/mahasiswa/pengajuan_surat_screen.dart
import 'package:flutter/material.dart';

class PengajuanSuratScreen extends StatelessWidget {
  const PengajuanSuratScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namaController = TextEditingController();
    final TextEditingController nimController = TextEditingController();
    final TextEditingController tujuanController = TextEditingController();

    String? selectedKategori;

    return Scaffold(
      appBar: AppBar(title: const Text('Pengajuan Surat'), backgroundColor: const Color(0xFFFF4F4F)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedKategori,
              items: const [
                DropdownMenuItem(value: 'Surat Aktif Kuliah', child: Text('Surat Aktif Kuliah')),
                DropdownMenuItem(value: 'Surat Dispensasi', child: Text('Surat Dispensasi')),
                DropdownMenuItem(value: 'Surat Tugas', child: Text('Surat Tugas')),
              ],
              onChanged: (value) => selectedKategori = value,
              decoration: const InputDecoration(labelText: 'Kategori Surat'),
            ),
            const SizedBox(height: 16),
            TextField(controller: namaController, decoration: const InputDecoration(labelText: 'Nama Lengkap')),
            const SizedBox(height: 16),
            TextField(controller: nimController, decoration: const InputDecoration(labelText: 'NIM')),
            const SizedBox(height: 16),
            TextField(controller: tujuanController, decoration: const InputDecoration(labelText: 'Tujuan Surat')),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Icon(Icons.upload_file),
                  SizedBox(width: 10),
                  Text("Upload Berkas"),
                ],
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pengajuan berhasil")));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4F4F),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("Ajukan"),
            ),
          ],
        ),
      ),
    );
  }
}
