class RestaurantModel {
  final String nameEn;
  final String logo;
  final String foodTypeEn;
  final double rating;
  final String hotelId;

  RestaurantModel({
    required this.nameEn,
    required this.logo,
    required this.foodTypeEn,
    required this.rating,
    required this.hotelId,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      nameEn: json['name_en'] ?? "Name Eng",
      logo: json['logo'] ??
          "https://png.pngtree.com/templates/20180809/restaurant-logos-png-png_25706.jpg",
      foodTypeEn: json['foodTypeEN'] ?? "",
      rating: (json['rating'] as num).toDouble(),
      hotelId: json['realTimeChannel'] ?? "",
    );
  }
}
