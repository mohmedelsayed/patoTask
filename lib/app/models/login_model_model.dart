class LoginModel {
  String? firstComment;
  int? status;
  String? message;

  LoginModel({this.firstComment, this.status, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    firstComment = json['//first_comment'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['//first_comment'] = firstComment;
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}
