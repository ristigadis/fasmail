// lib/screens/admin/home_admin_screen.dart
import 'package:flutter/material.dart';
import 'kelola_pengumuman_screen.dart';
import 'profil_admin_screen.dart';

class HomeAdminScreen extends StatefulWidget {
  const HomeAdminScreen({super.key});

  @override
  State<HomeAdminScreen> createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeContentAdmin(),
    const KelolaPengumumanScreen(),
    const ProfilAdminScreen(),
  ];

  void _onTap(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.announcement), label: 'Pengumuman'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

class HomeContentAdmin extends StatelessWidget {
  const HomeContentAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Beranda Admin TU")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.inbox),
              label: const Text("Lihat Pengajuan Masuk"),
              onPressed: () {
                // TODO: pindah ke detail pengajuan screen
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.verified),
              label: const Text("Cek Keaslian Surat"),
              onPressed: () {
                // TODO: ke halaman cek keaslian admin
              },
            ),
          ],
        ),
      ),
    );
  }
}
