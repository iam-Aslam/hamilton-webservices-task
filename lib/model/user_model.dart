class User {
  User({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.country,
    required this.userName,
  });
  late final String name;
  late final String email;
  late final String phoneNumber;
  late final String password;
  late final String country;
  late final String userName;

  User.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    email = json['Email'];
    phoneNumber = json['phone_number'];
    password = json['Password'];
    country = json['Country'];
    userName = json['UserName'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Name'] = name;
    data['Email'] = email;
    data['phone_number'] = phoneNumber;
    data['Password'] = password;
    data['Country'] = country;
    data['UserName'] = userName;
    return data;
  }
}
