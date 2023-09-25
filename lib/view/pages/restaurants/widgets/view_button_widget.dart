import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class ViewButtonWidget extends StatelessWidget {
  const ViewButtonWidget({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);
  final String name;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, bottom: 10),
        child: Row(
          children: [
            const Icon(
              Icons.history,
              color: AppColors.kWhite,
            ),
            SizedBox(
              width: size.width / 20,
            ),
            Text(name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
