class User {
  int ?id;
  String ?username;
  String? fullname;
  String? email;
  String? password;
  String ?mobile;
  String ?address;
  String ?city;
  bool? isVer;
  String? lastCode;

  User(
      {this.id,
        this.username,
        this.fullname,
        this.email,
        this.password,
        this.mobile,
        this.address,
        this.city,
        this.isVer,
        this.lastCode});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullname = json['fullname'];
    email = json['email'];
    password = json['password'];
    mobile = json['mobile'];
    address = json['address'];
    city = json['city'];
    isVer = json['isVer'];
    lastCode = json['lastCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['password'] = this.password;
    data['mobile'] = this.mobile;
    data['address'] = this.address;
    data['city'] = this.city;
    data['isVer'] = this.isVer;
    data['lastCode'] = this.lastCode;
    return data;
  }
}
