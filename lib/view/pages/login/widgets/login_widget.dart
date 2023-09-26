// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/user_provider.dart';
import 'package:task/model/login_model.dart';
import 'package:task/utils/colors.dart';
import 'package:task/view/pages/restaurants/home_screen.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({
    super.key,
  });
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Container(
      width: size.width / 1.2,
      height: size.height / 2.7,
      decoration: BoxDecoration(
        gradient: AppColors.linearGradient,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login your account',
                style: TextStyle(
                    color: AppColors.kWhite, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length < 10) {
                    return "Enter Valid Phone Number";
                  } else {
                    return null;
                  }
                },
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: 'Phone',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.person_outline_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null) {
                    return "Enter Valid Password";
                  } else {
                    return null;
                  }
                },
                controller: passwordController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true, // Fill the background
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  // icon: Icon(Icons.person), // Icon on the left
                ),
              ),
              SizedBox(
                height: size.height / 60,
              ),
              const Text(
                'Forgot your Password?',
                style: TextStyle(
                    color: AppColors.kWhite, fontWeight: FontWeight.bold),
              ),
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
                    LoginModel user = LoginModel(
                        phoneNumber: phoneController.text.trim(),
                        password: passwordController.text.trim());
                    if (await userProvider.login(user)) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    }
                  },
                  child: const Text(
                    'Login',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
