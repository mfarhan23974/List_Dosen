// lib/widgets/dosen_tile.dart
import 'package:flutter/material.dart';
import '../models/dosen_model.dart'; // Import model Dosen

class DosenTile extends StatelessWidget {
  final Dosen dosen;

  const DosenTile({super.key, required this.dosen});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Text(
            dosen.nama[0], // Huruf pertama nama
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        title: Text(
          dosen.nama,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text('NIDN: ${dosen.nip}\nKeahlian: ${dosen.bidangKeahlian}'),
        isThreeLine: true,
        onTap: () {
          // Aksi ketika item list diklik
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Anda memilih ${dosen.nama}')));
        },
      ),
    );
  }
}
