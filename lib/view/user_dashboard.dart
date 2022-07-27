import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'technicalnepal31@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text('Email'),
              onTap: () => Get.toNamed("/addEmail", arguments: {
                "SenderName": 'Sunil Tamang',
                "phone": "9899537835978"
              }),
            ),
            ListTile(
              title: const Text('Course'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Mountain Kidz & Daycare',
          style: TextStyle(
            height: 1.5,
            fontSize: 16,
            letterSpacing: 0.5,
            wordSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
