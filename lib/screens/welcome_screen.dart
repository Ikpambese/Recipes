import 'package:flutter/material.dart';
import 'package:recipetask/screens/explore.dart';
import 'package:recipetask/services/loginservice.dart';

class WelcomScreen extends StatelessWidget {
  LoginService loginService = LoginService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Colors.pink[50],
          height: 190,
          width: 190,
          child: TextButton(
            onPressed: () async {
              bool success = await loginService.signInWithGoogle();
              if (success) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Explore(),
                  ),
                );
              }
            },
            child: Text('Google Login'),
          ),
        ),
      ),
    );
  }
}
