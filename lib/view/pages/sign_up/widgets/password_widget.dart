// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    Key? key,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  @override
  PasswordWidgetState createState() => PasswordWidgetState();
}

class PasswordWidgetState extends State<PasswordWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.height / 40),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
