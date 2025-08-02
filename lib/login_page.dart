
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.clear();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void _navigateToDashboard() {
    final name = nameController.text.trim();
    if (name.isNotEmpty) {
      Navigator.pushNamed(
        context,
        '/dashboard',
        arguments: {'name': name},
      ).then((_) {
        nameController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 60),
            Image.asset(
              'assets/intern_logo.png',
              height: 160,
            ),
            SizedBox(height: 40),
            Text(
              "Intern Login",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter your name",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _navigateToDashboard,
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
