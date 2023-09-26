class UserData {
  final String clientName;
  final String username;
  final String? bio;
  final int followers;
  final int following;

  UserData({
    required this.clientName,
    required this.username,
    this.bio,
    required this.followers,
    required this.following,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    final data = json['data'][0];
    final clientName = data['client_name'];
    final username = data['Username'];
    final bio = data['Bio'];
    final followlist = data['followlist'];
    final followers = followlist['follower'];
    final following = followlist['following'];

    return UserData(
      clientName: clientName,
      username: username,
      bio: bio,
      followers: followers,
      following: following,
    );
  }
}
