import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  String username = "Guest";
  bool isDarkTheme = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void updateUsername(String newName) {
    setState(() {
      username = newName;
    });
  }

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      routes: {
        '/': (context) => HomeScreen(
              counter: counter,
              onIncrement: incrementCounter,
              username: username,
            ),
        '/profile': (context) => ProfileScreen(
              counter: counter,
              username: username,
              onUsernameChange: updateUsername,
            ),
        '/settings': (context) => SettingsScreen(
              isDark: isDarkTheme,
              onToggleTheme: toggleTheme,
            ),
      },
    );
  }
}
