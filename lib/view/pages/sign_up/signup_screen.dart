// ignore_for_file: use_build_context_synchronously, must_be_immutable
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/user_provider.dart';
import 'package:task/model/user_model.dart';
import 'package:task/utils/colors.dart';
import 'package:task/view/pages/login/login_screen.dart';
import 'widgets/formfield_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/password_widget.dart';
import 'widgets/phone_widget.dart';
import 'widgets/termsandconditoins_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(
          left: size.width / 12,
          right: size.width / 10,
          top: size.height / 20,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const HeaderWidget(),
                SizedBox(
                  height: size.height / 20,
                ),
                FormFeild(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Username";
                    }
                    return value;
                  },
                  hint: 'Username',
                  controller: userNameController,
                ),
                FormFeild(
                  hint: 'Full Name',
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Name";
                    } else {
                      return value;
                    }
                  },
                ),
                FormFeild(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return "Enter Valid Email";
                    } else {
                      return value;
                    }
                  },
                  hint: 'Email',
                  controller: emailController,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: size.height / 20),
                  child: PhoneFeild(
                    hint: 'Phone',
                    controller: phoneController,
                  ),
                ),
                PasswordWidget(
                  hint: 'Password',
                  controller: passwordController,
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
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        User user = User(
                          name: nameController.text.trim(),
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                          country: "91",
                          phoneNumber: phoneController.text.trim(),
                          userName: userNameController.text.trim(),
                        );
                        if (await userProvider.signUp(user)) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        }
                      }
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
        ),
      )),
    );
  }
}
