class User {
  final String userId;
  final String username;
  final String userUi;
  final String userPassword;
  final String userConfirmPassword;

  User({
    required this.userId,
    required this.username,
    required this.userUi,
    required this.userPassword,
    required this.userConfirmPassword,
  });
}

class MockUsers {
  static final List<User> users = [
    User(
      userId: "001",
      username: "sanphet",
      userUi: "https://randomuser.me/api/portraits/men/1.jpg",
      userPassword: "password123",
      userConfirmPassword: "password123",
    ),
    User(
      userId: "002",
      username: "john_doe",
      userUi: "https://randomuser.me/api/portraits/men/2.jpg",
      userPassword: "johnpass",
      userConfirmPassword: "johnpass",
    ),
    User(
      userId: "003",
      username: "jane_doe",
      userUi: "https://randomuser.me/api/portraits/women/1.jpg",
      userPassword: "janepass",
      userConfirmPassword: "janepass",
    ),
  ];
}
