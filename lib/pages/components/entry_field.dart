import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryField extends StatefulWidget {
  final TextEditingController controller;
  final text;
  final isPassword;

  const EntryField(this.controller, this.text, {this.isPassword = false});

  @override
  _EntryFieldState createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
              fontSize: 15,
              letterSpacing: .6,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? _obscureText : false,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? IconButton(
                      focusColor: Colors.red,
                      icon: _obscureText
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
              hintText: widget.text,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
