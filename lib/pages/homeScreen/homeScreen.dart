import 'package:firebase_auth/firebase_auth.dart';

import '../../service/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(firebaseUser.email),
            TextButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}