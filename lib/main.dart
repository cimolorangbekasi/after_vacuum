import 'package:flutter/material.dart';
import 'package:getx_bla/global/kelas_pelajaran.dart';
import 'package:getx_bla/screen/home/detail/detail.dart';
import 'package:getx_bla/screen/home/home.dart';

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
        primarySwatch: Colors.blue,
      ), // bisa juga ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.blue))
      // home: const Home(),
      home: Detail(
          pelajaran: Pelajaran(
              id: 4,
              name: 'nangis',
              jumlahSKS: 5,
              jumlahHalaman: 6723,
              pengajar: 'Prabowo')),
    );
  }
}
