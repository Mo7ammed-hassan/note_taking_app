class UserEntity {
  final String userName;
  final String email;

  UserEntity({
    required this.userName,
    required this.email,
  });
}

/*

NOTE: Password is not stored in UserEntity for security reasons

 */