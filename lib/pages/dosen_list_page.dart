// lib/pages/dosen_list_page.dart
import 'package:flutter/material.dart';
import '../../models/dosen_model.dart'; // Import data dosen
import '../../widgets/dosen_tile.dart'; // Import widget item

class DosenListPage extends StatelessWidget {
  const DosenListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Dosen'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: daftarDosen.length,
        itemBuilder: (context, index) {
          final dosen = daftarDosen[index];

          // Menggunakan widget DosenTile yang sudah kita buat
          return DosenTile(dosen: dosen);
        },
      ),
    );
  }
}
