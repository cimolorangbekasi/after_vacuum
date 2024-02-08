import 'package:flutter/material.dart';

// hahaha ane hapus semua

void main() {
  runApp(const Aplikasi());
}

class Aplikasi extends StatelessWidget {
  const Aplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tes Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors
              .blue), // bisa juga ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.blue))
      home: const Text('halo'),
    );
  }
}
