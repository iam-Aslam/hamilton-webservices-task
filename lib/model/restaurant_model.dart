// ignore_for_file: public_member_api_docs, sort_constructors_first
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
      logo: json['logo'] ?? "",
      foodTypeEn: json['foodTypeEN'] ?? "",
      rating: (json['rating'] as num).toDouble(),
      hotelId: json['realTimeChannel'] ?? "",
    );
  }
}
