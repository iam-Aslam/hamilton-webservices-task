import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('skip button'),
      child: const Row(
        children: [
          Text(
            'Skip',
            style:
                TextStyle(color: AppColors.kWhite, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.kWhite,
            size: 15,
          ),
        ],
      ),
    );
  }
}
