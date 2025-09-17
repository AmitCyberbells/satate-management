import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final bool isDark;
  final VoidCallback onToggleTheme;

  const SettingsScreen({
    super.key,
    required this.isDark,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: SwitchListTile(
          title: Text("Dark Theme"),
          value: isDark,
          onChanged: (value) => onToggleTheme(),
        ),
      ),
    );
  }
}
