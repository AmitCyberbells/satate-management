import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final int counter;
  final String username;
  final Function(String) onUsernameChange;

  const ProfileScreen({
    super.key,
    required this.counter,
    required this.username,
    required this.onUsernameChange,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value: ${widget.counter}",
                style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Enter Username"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.onUsernameChange(_controller.text);
                Navigator.pop(context); // go back to home
              },
              child: Text("Update Username"),
            )
          ],
        ),
      ),
    );
  }
}
