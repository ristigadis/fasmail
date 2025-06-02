// lib/screens/admin/detail_pengajuan_screen.dart
import 'package:flutter/material.dart';

class DetailPengajuanScreen extends StatelessWidget {
  const DetailPengajuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy data pengajuan
    final data = {
      'nama': 'Gendis Safira',
      'nim': '21.01.1234',
      'kategori': 'Surat Aktif Kuliah',
      'tujuan': 'Beasiswa Unggulan Kemendikbud',
      'status': 'Menunggu Verifikasi',
    };

    return Scaffold(
      appBar: AppBar(title: const Text("Detail Pengajuan Surat")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: ${data['nama']}"),
            Text("NIM: ${data['nim']}"),
            Text("Kategori: ${data['kategori']}"),
            Text("Tujuan: ${data['tujuan']}"),
            Text("Status: ${data['status']}"),
            const SizedBox(height: 30),
            const Text("Berkas Pendukung:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Icon(Icons.picture_as_pdf),
                  SizedBox(width: 10),
                  Text("lampiran_berkas.pdf"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // aksi terima
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Surat Diterima")));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Terima"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // aksi tolak
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Surat Ditolak")));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("Tolak"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
