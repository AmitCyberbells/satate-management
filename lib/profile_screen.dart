import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/app_controller.dart';

class ProfileScreen extends StatelessWidget {
  final AppController controller = Get.find<AppController>();
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    textController.text = controller.username.value;

    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Counter Value: ${controller.counter.value}",
                  style: TextStyle(fontSize: 24),
                )),
            SizedBox(height: 20),
            TextField(
              controller: textController,
              decoration: InputDecoration(labelText: "Enter Username"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.updateUsername(textController.text);
                Get.back();
              },
              child: Text("Update Username"),
            )
          ],
        ),
      ),
    );
  }
}
