class User {
  String? id;
  String? name;
  String? password;
  String? phoneNumber;
  int? iv;

  User({this.id, required this.name, this.password, this.phoneNumber, this.iv});

  User.fromJson(Map<String, dynamic> json) {
    id = json[' id'];
    name = json['name'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    iv = json['v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['phoneNumber'] = phoneNumber;
    return data;
  }
}
