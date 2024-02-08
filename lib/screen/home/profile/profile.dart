import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bla/controller/controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<ListController>();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 197, 182),
      body: Obx(
        // using this Obx class, it will refresh the page
        // if youre on same screen with the input, you need to use Obx that similiar to setState
        // but in this case here, you actually dont need it since the input is on different page
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            const Text('My Pelajarans :'),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            ..._controller.cart.value.map((e) => Text(e.name)),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
          ],
        ),
      ),
    );
  }
}
