// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'dosen_list_page.dart'; // Import halaman list dosen

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Contoh Logout: Kembali ke halaman Login
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.school, size: 100, color: Colors.indigo),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang di Portal Dosen',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),

            // Tombol menuju Daftar Dosen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigasi ke halaman Daftar Dosen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DosenListPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.list_alt, color: Colors.white),
                label: const Text(
                  'Lihat Daftar Dosen',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(double.infinity, 50), // Lebar penuh
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
