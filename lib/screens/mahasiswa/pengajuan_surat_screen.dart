// lib/screens/mahasiswa/pengajuan_surat_screen.dart
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart'; // import file_picker package

class PengajuanSuratScreen extends StatefulWidget {
  const PengajuanSuratScreen({super.key});

  @override
  _PengajuanSuratScreenState createState() => _PengajuanSuratScreenState();
}

class _PengajuanSuratScreenState extends State<PengajuanSuratScreen> {
  TextEditingController kategoriController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController tujuanController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();

  String? selectedKategori;
  String? fileName; // Menyimpan nama file yang diupload

  // Fungsi untuk memilih file menggunakan FilePicker
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      // Ambil nama file yang dipilih
      setState(() {
        fileName = result.files.single.name;
      });
    } else {
      // Jika user membatalkan file picker
      setState(() {
        fileName = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengajuan Surat'), backgroundColor: const Color(0xFFF45C5C)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            // Dropdown Kategori Surat
            DropdownButtonFormField<String>(
              value: selectedKategori,
              items: const [
                DropdownMenuItem(value: 'Surat Aktif Kuliah', child: Text('Surat Aktif Kuliah')),
                DropdownMenuItem(value: 'Surat Dispensasi', child: Text('Surat Dispensasi')),
                DropdownMenuItem(value: 'Surat Tugas', child: Text('Surat Tugas')),
              ],
              onChanged: (value) => selectedKategori = value,
              decoration: const InputDecoration(
                labelText: 'Kategori Surat',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Input Nama Lengkap
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Input NIM
            TextField(
              controller: nimController,
              decoration: const InputDecoration(
                labelText: 'NIM',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Input Tanggal Lahir
            TextField(
              controller: tanggalController,
              readOnly: true,
              onTap: () => _selectDate(context),
              decoration: const InputDecoration(
                labelText: 'Tanggal Lahir',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Input Tujuan Surat
            TextField(
              controller: tujuanController,
              decoration: const InputDecoration(
                labelText: 'Tujuan Surat',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF45C5C), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Upload Berkas
            GestureDetector(
              onTap: _pickFile,
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF45C5C), width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.upload_file, color: Color(0xFFF45C5C)),
                    const SizedBox(width: 10),
                    Text(fileName ?? "Upload Berkas", style: const TextStyle(color: Color(0xFFF45C5C))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Button Ajukan
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Surat berhasil diajukan")));
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text("Ajukan", style: TextStyle(color: Colors.green)),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Fungsi memilih tanggal
  Future<void> _selectDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(1900);
    DateTime lastDate = DateTime(2101);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (picked != null && picked != initialDate) {
      setState(() {
        tanggalController.text = '${picked.toLocal()}'.split(' ')[0]; // format yyyy-mm-dd
      });
    }
  }
}
