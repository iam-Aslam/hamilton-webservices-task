import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.2,
      height: size.height / 2.7,
      decoration: BoxDecoration(
        gradient: AppColors.linearGradient,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
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
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: 'E-mail',
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
                onPressed: () {},
                child: const Text(
                  'Login',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
