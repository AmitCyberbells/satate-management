import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/app_controller.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appController.isDarkTheme.value
              ? ThemeData.dark()
              : ThemeData.light(),
          initialRoute: '/',
          getPages: [
            GetPage(name: '/', page: () => HomeScreen()),
            GetPage(name: '/profile', page: () => ProfileScreen()),
            GetPage(name: '/settings', page: () => SettingsScreen()),
          ],
        ));
  }
}
