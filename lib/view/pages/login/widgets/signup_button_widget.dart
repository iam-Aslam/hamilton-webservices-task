import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task/utils/colors.dart';
import 'package:task/view/pages/sign_up/signup_screen.dart';

class SignupButtonWidget extends StatelessWidget {
  const SignupButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.width / 8, right: size.width / 5),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "You don't have an account yet?",
                style: TextStyle(
                  color: AppColors.kWhite,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: SignUpScreen()));
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                      color: AppColors.kWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
