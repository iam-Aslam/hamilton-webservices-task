import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width / 3.5, top: size.height / 12),
      child: Image.asset(
        'assets/images/logo.png',
        width: size.width / 2.5,
        height: size.height / 4,
      ),
    );
  }
}
