import 'package:flutter/material.dart';
import 'package:shared_preference/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text('Save Value'))
          ],
        ),
      ),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textController.text);

    // Set an Object for Shared Preferences

    final sP = await SharedPreferences.getInstance();

    // Save Value

    await sP.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sP = await SharedPreferences.getInstance();
    final savedValue = sP.getString('saved_value');
    if (savedValue != null) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return ProfilePage();
      }));
    }
  }
}
