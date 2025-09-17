import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/app_controller.dart';

class HomeScreen extends StatelessWidget {
  final AppController controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Hello, ${controller.username.value}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 20),
            Obx(() => Text(
                  "Counter: ${controller.counter.value}",
                  style: TextStyle(fontSize: 24),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.incrementCounter,
              child: Text("Increment Counter"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed('/profile'),
              child: Text("Go to Profile"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/settings'),
              child: Text("Go to Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
