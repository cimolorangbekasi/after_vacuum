import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bla/controller/controller.dart';
import 'package:getx_bla/global/kelas_pelajaran.dart';
import 'package:getx_bla/screen/home/detail/detail.dart';
import 'package:getx_bla/screen/home/profile/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(ListController());
    //
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const Profile());
              },
              icon: const Icon(Icons.person_pin))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 202, 197, 182),
      body: ListView(
        children: [
          const Text(
            'Daftar Mata Kuliah t/a 2023-2024',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Column(
            children: pelajaran2.map((e) {
              return Card(
                child: ListTile(
                    onTap: () {
                      Get.to(() => Detail(pelajaran: e));
                    },
                    title: Text(e.name),
                    subtitle: Text('Pengajar: ${e.pengajar}'),
                    trailing: const Icon(Icons.more_vert)),
              );
            }).toList(),
          ),
        ],
      ),
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
