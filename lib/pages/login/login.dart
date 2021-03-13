import 'package:authentication_firebase/service/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../components/bottom_text.dart';
import '../components/entry_field.dart';
import '../components/submitButton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    checklogin();
  }

  void checklogin() async {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      Navigator.pushReplacementNamed(context, '/homeScreen');
    }
  }

  void login() {
    context
        .read<AuthenticationService>()
        .signIn(
          email: _email.text.trim(),
          password: _password.text.trim(),
        )
        .then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginInput(),
              SubmitButton('Login', login),
              forgotPassword(),
              BottomText('Ainda não possui uma conta? Cadastre-se', '/'),
            ],
          ),
        ),
      ],
    );
  }

  Widget loginInput() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              EntryField(_email, 'Email'),
              EntryField(_password, 'password', isPassword: _obscureText)
            ],
          ),
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          //TODO FORGOT PASSWORD
        },
        child: Text(
          'Esqueceu a Senha?',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
