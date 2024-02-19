class User {
  String? username;
  String? email;
  String? password;
  String? aktivitas;
  String? gender;
  String? imageAvatar;
  bool? beratBadan;
  bool? tinggiBadan;
  int? umur;
  
  User({
    this.username,
    this.email,
    this.password,
    this.aktivitas,
    this.gender,
    this.imageAvatar,
    this.beratBadan,
    this.tinggiBadan,
    this.umur,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
    aktivitas = json['aktivitas'];
    gender = json['gender'];
    imageAvatar = json['imageAvatar'];
    beratBadan = json['beratBadan'];
    tinggiBadan = json['tinggiBadan'];
    umur = json['umur'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    data['aktivitas'] = aktivitas;
    data['gender'] = gender;
    data['imageAvatar'] = imageAvatar;
    data['beratBadan'] = beratBadan;
    data['tinggiBadan'] = tinggiBadan;
    data['umur'] = umur;
    return data;
  }
}
