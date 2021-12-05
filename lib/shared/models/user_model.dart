import 'dart:convert';

class UserModel {
  final String name;
  final String email;
  final String? photoUrl;

  UserModel({required this.name, required this.email, required this.photoUrl});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'], email: map['email'], photoUrl: map['photoURL']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURL": photoUrl,
        "email": email,
      };

  String toJson() => jsonEncode(toMap());
}
