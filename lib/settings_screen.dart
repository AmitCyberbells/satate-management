import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/app_controller.dart';

class SettingsScreen extends StatelessWidget {
  final AppController controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: Obx(() => SwitchListTile(
              title: Text("Dark Theme"),
              value: controller.isDarkTheme.value,
              onChanged: (val) => controller.toggleTheme(),
            )),
      ),
    );
  }
}
