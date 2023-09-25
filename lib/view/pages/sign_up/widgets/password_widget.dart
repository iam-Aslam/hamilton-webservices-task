import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    Key? key,
    required this.hint,
  }) : super(key: key);

  final String hint;

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
