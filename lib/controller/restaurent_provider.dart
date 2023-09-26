import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task/constants/constants.dart';
import 'package:task/model/restaurant_model.dart';

class RestaurantProvider with ChangeNotifier {
  Dio dio = Dio();
  List<RestaurantModel> restaurants = [];

  Future<void> getRestaurants() async {
    String url = AppConstants.restaurantUrl;
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> restaurantData = response.data["data"];
        restaurants = restaurantData
            .map((json) => RestaurantModel.fromJson(json))
            .toList();
        notifyListeners();
      } else {
        throw Exception('Failed to load restaurants');
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Failed to load restaurants');
    }
  }
}
