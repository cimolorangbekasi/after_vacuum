import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bla/controller/controller.dart';

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
          TextField(
            controller: inputan,
            onSubmitted: (value) => _controller.fungsi(value),
            decoration: InputDecoration(
              labelText: 'katakan "cimol"',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        heroTag: 'grid',
        onPressed: () => (),
        child: const Icon(Icons.note_add, size: 34),
      ),
    );
  }
}
