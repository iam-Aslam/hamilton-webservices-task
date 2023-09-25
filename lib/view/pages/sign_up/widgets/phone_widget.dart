import 'package:flutter/material.dart';

class PhoneFeild extends StatelessWidget {
  const PhoneFeild({
    super.key,
    required this.hint,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.height / 20),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: hint,
            hintText: '+91  |  Phone Number',
            floatingLabelBehavior: FloatingLabelBehavior.always),
      ),
    );
  }
}
