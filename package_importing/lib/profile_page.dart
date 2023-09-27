import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;

  const ProfilePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppBar(
          title: Text(name),
        ),
      ),
    );
  }
}
