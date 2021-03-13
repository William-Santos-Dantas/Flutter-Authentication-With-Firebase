import 'package:authentication_firebase/service/authentication_service.dart';

import 'package:provider/provider.dart';
import '../components/entry_field.dart';
import '../components/submitButton.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPage(),
    );
  }

  void register() {
    context.read<AuthenticationService>().signUp(
          email: _email.text.trim(),
          password: _password.text.trim(),
        );
  }

  Widget bodyPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              registerInput(),
              SubmitButton('Register', register),
            ],
          ),
        ),
      ],
    );
  }

  Widget registerInput() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              //EntryField(_name, 'Name'),
              EntryField(_email, 'Email'),
              EntryField(_password, 'password', isPassword: true),
            ],
          ),
        ],
      ),
    );
  }
}
