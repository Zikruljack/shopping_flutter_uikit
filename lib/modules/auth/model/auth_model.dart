import 'dart:convert';

class AuthModel {
  final String email;
  final String password;
  final String name;

  AuthModel(this.email, this.password, this.name);

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'name': name,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      map['email'] ?? '',
      map['password'] ?? '',
      map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source));
}
