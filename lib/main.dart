import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/controller/user_provider.dart';
import 'package:task/view/pages/login/login_screen.dart';

import 'controller/restaurent_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => RestaurantProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
