import 'package:flutter/material.dart';
import 'package:getx_bla/screen/home/home.dart';
import 'package:getx_bla/screen/splash.dart';

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
      home: FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 800)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const Home();
          }
          return const Splash();
        },
      ),
    );
  }
}
