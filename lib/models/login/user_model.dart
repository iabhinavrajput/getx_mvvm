class UserModel {
  String? userId;
  String? username;
  String? firstname;
  String? lastname;
  String? email;
  String? mobile;
  String? accessToken;
  bool? status;
  String? message;
  String? note;

  UserModel(
      {this.userId,
      this.username,
      this.firstname,
      this.lastname,
      this.email,
      this.mobile,
      this.accessToken,
      this.status,
      this.message,
      this.note});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    username = json['username'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    mobile = json['mobile'];
    accessToken = json['access_token'];
    status = json['status'];
    message = json['message'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['access_token'] = this.accessToken;
    data['status'] = this.status;
    data['message'] = this.message;
    data['note'] = this.note;
    return data;
  }
}
