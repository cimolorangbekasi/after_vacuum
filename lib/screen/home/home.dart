import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bla/controller/controller.dart';
import 'package:getx_bla/global/kelas_pelajaran.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ListController());
    TextEditingController inputan = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Text(_controller.name.value);
          }),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: TextField(
              controller: inputan,
              onSubmitted: (value) => _controller.fungsi(value),
              decoration: InputDecoration(
                labelText: 'katakan "cimol"',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue,
      //   heroTag: 'grid',
      //   onPressed: () => (),
      //   child: const Icon(Icons.note_add, size: 34),
      // ),
    );
  }
}

List<Pelajaran> pelajaran2 = [
  Pelajaran(
    id: 1,
    name: 'Nahwu',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Syekh Cimol',
    jurusan: 'Syariah',
  ),
  Pelajaran(
    id: 2,
    name: 'Statistik',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Syekh Irhab',
    jurusan: 'Ekonomi Islam',
  ),
  Pelajaran(
    id: 3,
    name: 'Ushul Fiqh',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Syekh Telor',
    jurusan: 'Syariah',
  ),
  Pelajaran(
    id: 4,
    name: 'Nahwu',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Syekh Cimol',
    jurusan: 'Lughah',
  ),
  Pelajaran(
    id: 5,
    name: 'B. Inggris',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Mr. John',
    jurusan: 'Ekonomi Islam',
  ),
  Pelajaran(
    id: 6,
    name: 'Matematika',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Syekh Riyadhiyat',
    jurusan: 'Ekonomi Islam',
  ),
  Pelajaran(
    id: 7,
    name: 'Dasar Pemrograman',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Mr. Watts',
    jurusan: 'IT',
  ),
  Pelajaran(
    id: 8,
    name: 'Kesusastraan Bahasa Jepang',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Nakamura Sensei',
    jurusan: 'Sastra Jepang',
  ),
  Pelajaran(
    id: 9,
    name: 'Adab Arabi',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Syekh Andalus',
    jurusan: 'Lughah',
  ),
  Pelajaran(
    id: 10,
    name: 'Dasar-Dasar Ilmu Politik',
    jumlahSKS: 10,
    jumlahHalaman: 547,
    pengajar: 'Dr. Budi',
    jurusan: 'Sastra Indonesia',
  ),
];
