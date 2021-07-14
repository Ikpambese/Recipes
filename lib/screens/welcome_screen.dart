import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipetask/constants.dart';
import 'package:recipetask/screens/explore.dart';
import 'package:recipetask/services/loginservice.dart';

class WelcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginService loginService =
        Provider.of<LoginService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        title: Center(
          child: Text(
            'Continue to Start \n COOCKING...',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [kBoxShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
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
                child: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
