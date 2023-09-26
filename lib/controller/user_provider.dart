import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/constants/constants.dart';
import 'package:task/model/login_model.dart';
import 'package:task/model/profile_model.dart';
import 'package:task/model/user_model.dart';

class UserProvider with ChangeNotifier {
  String? authToken;
  String? userId;
  UserData? userData;
  void updateUserId(String? id) {
    userId = id;
    notifyListeners();
  }

  void updateAuthToken(String? token) {
    authToken = token;
    notifyListeners();
  }

  Dio dio = Dio();

  // Sign Up Function
  Future<bool> signUp(User user) async {
    String url = AppConstants.registerUrl;
    log(url);
    try {
      final response = await dio.post(url, data: user.toJson());
      log(response.toString());
      if (response.statusCode == 200) {
        final token = response.data["token"];
        log("userId: $userId");
        updateAuthToken(token);
        showToastMessage('Registered successfully');
        return true;
      } else {
        log('Failed to sign up. Status code: ${response.statusCode}');
        showToastMessage('Registration failed');
        return false;
      }
    } catch (error) {
      showToastMessage('Registration failed');
      return false;
    }
  }

  // Login Function
  Future<bool> login(LoginModel loginModel) async {
    String url = AppConstants.loginUrl;
    try {
      final response = await dio.post(
        url,
        data: loginModel.toJson(),
      );

      if (response.statusCode == 200) {
        final token = response.data["token"];
        final id = response.data["user"]["client_id"];
        updateUserId(id.toString());
        updateAuthToken(token);
        showToastMessage('Logged In successfully');
        return true;
      } else {
        log('Failed to sign up. Status code: ${response.statusCode}');
        showToastMessage('Log In failed');
        return false;
      }
    } catch (e) {
      showToastMessage('Sign In failed');
      log(e.toString());
      return false;
    }
  }

  //Get user profile
  Future<void> fetchUserData() async {
    int id = int.parse(userId!);
    String profileUrl = '/user/profiles/get-profiles?ClientID=$id&userid=$id';
    String url = '${AppConstants.apiBaseUrl}$profileUrl';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        userData = UserData.fromJson(response.data);
        notifyListeners();
      }
    } catch (error) {
      log('Error fetching user data: $error');
    }
  }

  //Toast message function
  void showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.black,
    );
  }
}
