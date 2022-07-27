import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

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
              child: Text('technicalnepal31@gmail.com'),
            ),
            ListTile(
              title: const Text('Email'),
              onTap: () => Get.toNamed("/addEmail"),
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
          'USER DASHBOARD',
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
