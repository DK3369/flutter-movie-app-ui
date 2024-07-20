class UserInfoModel{
  String? avater = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbejdwN7r51AW5hGnU8IX1vlGi5NOm9CQcye9N4P27xQ&s";
  String? birthday = "1999";
  String? createDate = "1999";
  String? email = "";
  String? role = "";
  String? sex = "";
  String? telephone = "";
  String? updateDate = "";
  String? userId = "33";
  String? username = "22";
  String? sign = "";
  String? region = "";
  int? disabled = 0;
  int? permission = 0;
  UserInfoModel({
    this.avater,
    this.birthday,
    this.createDate,
    this.email,
    this.role,
    this.sex,
    this.telephone,
    this.updateDate,
    this.userId,
    this.username,
    this.sign,
    this.region,
    this.disabled,
    this.permission
  });
  //工厂模式-用这种模式可以省略New关键字
  factory UserInfoModel.fromJson(dynamic json){
    return
      UserInfoModel(
      avater: json["avater"],
      birthday: json["birthday"],
      createDate: json["createDate"],
      email: json["email"],
      role: json["role"],
      sex: json["sex"],
      telephone: json["telephone"],
      updateDate: json["updateDate"],
      userId: json["userId"],
      username: json["username"],
      sign: json["sign"],
      region: json["region"],
      disabled:json["disabled"],
      permission:json["permission"]
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "avater": avater,
      "birthday": birthday,
      "createDate": createDate,
      "email": email,
      "role": role,
      "sex": sex,
      "telephone": telephone,
      "updateDate": updateDate,
      "userId": userId,
      "username": username,
      "sign": sign,
      "region": region
    };
  }

  dynamic get(String propertyName) {
    var _mapRep = toMap();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }
}