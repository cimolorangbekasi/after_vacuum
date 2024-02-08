import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bla/controller/controller.dart';
import 'package:getx_bla/global/kelas_pelajaran.dart';
import 'package:getx_bla/global/static_styles.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.pelajaran});

  final Pelajaran pelajaran;

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<ListController>();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 197, 182),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 16),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            Text(
              pelajaran.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('pengajar : ${pelajaran.pengajar}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('${pelajaran.jumlahHalaman.toString()} pages',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300)),
                    Text('${pelajaran.jumlahSKS.toString()} SKS',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300)),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => _controller.tambah(pelajaran),
              style: StaticStyles.buttonDark(),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tambahkan ke Keranjang',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 16),
          ],
        ),
      ),
    );
  }
}
