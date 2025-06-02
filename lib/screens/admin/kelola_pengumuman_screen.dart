// lib/screens/admin/kelola_pengumuman_screen.dart
import 'package:flutter/material.dart';

class KelolaPengumumanScreen extends StatefulWidget {
  const KelolaPengumumanScreen({super.key});

  @override
  State<KelolaPengumumanScreen> createState() => _KelolaPengumumanScreenState();
}

class _KelolaPengumumanScreenState extends State<KelolaPengumumanScreen> {
  final List<String> pengumumanList = [
    'Pengajuan surat dibuka hingga 20 Juni 2025',
    'Libur fakultas 17-18 Agustus',
  ];

  final TextEditingController _newController = TextEditingController();

  void _tambahPengumuman() {
    if (_newController.text.isNotEmpty) {
      setState(() {
        pengumumanList.add(_newController.text);
        _newController.clear();
      });
    }
  }

  void _hapusPengumuman(int index) {
    setState(() {
      pengumumanList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kelola Pengumuman")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _newController,
              decoration: const InputDecoration(
                labelText: "Tulis Pengumuman Baru",
                suffixIcon: Icon(Icons.announcement),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _tambahPengumuman, child: const Text("Tambah Pengumuman")),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: pengumumanList.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(pengumumanList[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _hapusPengumuman(index),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
