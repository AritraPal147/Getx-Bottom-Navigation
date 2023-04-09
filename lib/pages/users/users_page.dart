import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/pages/add/add_controller.dart';

class UsersPage extends StatelessWidget {
  UsersPage({super.key});

  final AddController c = Get.put(AddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Users Numbers',
              style: TextStyle(fontSize: 20),
            ),
            const Divider(),
            Obx(
              () => Text(
                c.counter.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
