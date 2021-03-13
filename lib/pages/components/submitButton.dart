import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final text;
  final login;

  const SubmitButton(this.text, this.login);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: () => widget.login(),
        child: Text(
          widget.text.toUpperCase(),
          style: TextStyle(fontSize: 20.0, color: Colors.deepPurple[400]),
        ),
      ),
    );
  }
}
