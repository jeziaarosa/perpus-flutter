import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add your logout logic here
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: Text('Log Out'),
        ),
      ),
    );
  }
}
