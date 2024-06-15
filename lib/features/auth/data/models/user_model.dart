class UserModel {
  final String userName;
  final String email;

  UserModel({required this.userName, required this.email});

  // factory constructor.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['userName'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'email': email,
    };
  }
}
