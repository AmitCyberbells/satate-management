import 'package:get/get.dart';

class AppController extends GetxController {
  var counter = 0.obs;
  var username = "Guest".obs;
  var isDarkTheme = false.obs;

  void incrementCounter() => counter++;
  void updateUsername(String name) => username.value = name;
  void toggleTheme() => isDarkTheme.value = !isDarkTheme.value;
}
