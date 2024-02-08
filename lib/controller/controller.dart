import 'package:get/get.dart';

class ListController extends GetxController {
  final name = ''.obs;

  void fungsi(String teks) {
    name.value = teks;
  }
}
