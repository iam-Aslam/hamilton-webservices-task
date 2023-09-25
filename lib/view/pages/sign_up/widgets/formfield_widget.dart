import 'package:flutter/material.dart';

class FormFeild extends StatelessWidget {
  const FormFeild({
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
            floatingLabelBehavior: FloatingLabelBehavior.always),
      ),
    );
  }
}
