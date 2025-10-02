import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp2());
}

class ProfileApp2 extends StatelessWidget {
  const ProfileApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Edit Profile")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(""),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Phone"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Bio"),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Save Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
