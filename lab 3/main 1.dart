import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp1());
}

class ProfileApp1 extends StatelessWidget {
  const ProfileApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("User Profile")),
        body: Center(
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                  ),
                  const SizedBox(height: 15),
                  const Text("nayyab dogar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const Text("Web Developer", style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 10),
                  const Text("Email: nayb@example.com"),
                  const Text("Phone: +12345678"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
