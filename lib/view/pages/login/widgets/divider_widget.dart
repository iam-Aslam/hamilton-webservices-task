import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width / 8, right: size.width / 9),
      child: Row(children: <Widget>[
        const Expanded(
            child: Divider(
          color: AppColors.kWhite,
          thickness: 1,
        )),
        SizedBox(
          width: size.width / 15,
        ),
        const Text(
          "login with",
          style: TextStyle(
            color: AppColors.kWhite,
          ),
        ),
        SizedBox(
          width: size.width / 15,
        ),
        const Expanded(
            child: Divider(
          color: AppColors.kWhite,
          thickness: 1,
        )),
      ]),
    );
  }
}
