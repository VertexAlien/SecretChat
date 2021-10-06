class UserDetails {
  late String name;
  late String password;

  UserDetails.fromMap(Map<String, dynamic> userDetails) {
    name = userDetails["name"];
    password = userDetails["password"];
  }
}
