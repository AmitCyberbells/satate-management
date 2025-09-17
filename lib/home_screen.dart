import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final String username;

  const HomeScreen({
    super.key,
    required this.counter,
    required this.onIncrement,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, $username",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Counter: $counter", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: onIncrement,
              child: Text("Increment Counter"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              child: Text("Go to Profile"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              child: Text("Go to Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
