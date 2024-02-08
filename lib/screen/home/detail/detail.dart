import 'package:flutter/material.dart';
import 'package:getx_bla/global/kelas_pelajaran.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.pelajaran});

  final Pelajaran pelajaran;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 4),
          Text(pelajaran.name),
          Text(pelajaran.pengajar),
          Text(pelajaran.jumlahHalaman.toString()),
          Text(pelajaran.jumlahSKS.toString()),
        ],
      ),
    );
  }
}
