class UserModel {
  final String userName;
  final String password;
  final String email;

  UserModel(
      {required this.userName, required this.password, required this.email});
  
  
  // factory constructor.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['userName'],
      password: json['password'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'email': email,
      'password': password,
    };
  }
}
