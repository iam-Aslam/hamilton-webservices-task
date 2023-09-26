class AppConstants {
  static const apiBaseUrl = 'https://user.requeue.com';
  static const loginUrl = '$apiBaseUrl/user/auth/login';
  static const registerUrl = '$apiBaseUrl/user/auth/SignUp';
  static const restaurantUrl =
      '$apiBaseUrl/user/mainpages/get-restaurants?PickupAvailable=1&AreaName=Kuwait&page=1&pagelimit=10';
  static const profileUrl =
      'user/profiles/get-profiles?ClientID=157442&userid=157442';
  static const imageBaseUrl = 'https://cdn.requeue.net/media/logos/';
}
