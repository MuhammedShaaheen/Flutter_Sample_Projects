import 'package:flutter/material.dart';
import 'package:package_importing/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Person $index'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return ProfilePage(name: 'Person $index');
                        },
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 30)),
    );
  }
}
