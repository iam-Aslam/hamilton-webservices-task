import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task/utils/colors.dart';
import 'package:task/view/pages/restaurants/home_screen.dart';
import 'widgets/formfield_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/password_widget.dart';
import 'widgets/phone_widget.dart';
import 'widgets/termsandconditoins_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(
          left: size.width / 12,
          right: size.width / 10,
          top: size.height / 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              SizedBox(
                height: size.height / 20,
              ),
              const FormFeild(
                hint: 'Username',
              ),
              const FormFeild(
                hint: 'Full Name',
              ),
              const FormFeild(
                hint: 'Email',
              ),
              const PhoneFeild(
                hint: 'Phone',
              ),
              const PasswordWidget(
                hint: 'Password',
              ),
              const TermsAndConditionsWidget(),
              SizedBox(
                height: size.height / 60,
              ),
              SizedBox(
                width: size.width / 1,
                height: size.height / 16,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    backgroundColor: const Color.fromARGB(222, 58, 16, 174),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const HomeScreen()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: AppColors.kWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
