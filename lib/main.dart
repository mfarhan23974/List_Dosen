// lib/main.dart (Perubahan Kecil)
import 'package:flutter/material.dart';
import 'pages/login_page.dart'; // <-- BARU: Import halaman Login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Dosen App',
      theme: ThemeData(primarySwatch: Colors.blue),
      // --- PERUBAHAN DI SINI ---
      home: const LoginPage(), // Set halaman awal adalah halaman Login
      debugShowCheckedModeBanner: false,
    );
  }
}
