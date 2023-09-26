import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'widgets/divider_widget.dart';
import 'widgets/image_widgets.dart';
import 'widgets/login_widget.dart';
import 'widgets/signup_button_widget.dart';
import 'widgets/skip_widget.dart';
import 'widgets/social_media_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.linearGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const ImageWidget(),
                  SizedBox(
                    width: size.width / 7,
                  ),
                  const SkipWidget()
                ],
              ),
              LoginWidget(),
              SizedBox(
                height: size.height / 35,
              ),
              const SignupButtonWidget(),
              SizedBox(
                height: size.height / 35,
              ),
              const DividerWidget(),
              SizedBox(
                height: size.height / 35,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width / 7, right: size.width / 9),
                child: Row(
                  children: [
                    const SocialMediaWidget(
                      image: 'assets/images/google.png',
                    ),
                    SizedBox(
                      width: size.width / 15,
                    ),
                    const SocialMediaWidget(
                      image: 'assets/images/apple.png',
                    ),
                    SizedBox(
                      width: size.width / 15,
                    ),
                    const SocialMediaWidget(
                      image: 'assets/images/facebook.png',
                    ),
                    SizedBox(
                      width: size.width / 15,
                    ),
                    const SocialMediaWidget(
                      image: 'assets/images/twitter.png',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
