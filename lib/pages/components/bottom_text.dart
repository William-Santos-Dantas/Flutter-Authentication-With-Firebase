import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BottomText extends StatelessWidget {
  final text;
  final url;

  const BottomText(this.text, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, url);
        },
        child: AutoSizeText(
          text,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
