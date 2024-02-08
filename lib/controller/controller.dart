import 'package:get/get.dart';
import 'package:getx_bla/global/kelas_pelajaran.dart';

class ListController extends GetxController {
  Rx<List<Pelajaran>> pelajaran2 = Rx<List<Pelajaran>>([]);
  final name = ''.obs;

  void fungsi(String teks) {
    name.value = teks;
  }

  void tambah(Pelajaran pelajaran) {
    pelajaran2.value.add(pelajaran);
  }
}
