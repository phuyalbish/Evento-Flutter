// // To parse this JSON data, do
// //
// //     final loginOrNot = loginOrNotFromJson(jsonString);

// import 'dart:convert';

// LoginOrNot loginOrNotFromJson(String str) =>
//     LoginOrNot.fromJson(json.decode(str));

// String loginOrNotToJson(LoginOrNot data) => json.encode(data.toJson());

// class LoginOrNot {
//   List<Logindata> logindatas;

//   LoginOrNot({
//     required this.logindatas,
//   });

//   factory LoginOrNot.fromJson(Map<String, dynamic> json) => LoginOrNot(
//         logindatas: List<Logindata>.from(
//             json["logindatas"].map((x) => Logindata.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "logindatas": List<dynamic>.from(logindatas.map((x) => x.toJson())),
//       };
// }

// class Logindata {
//   String loggedinornot;
//   String loggedinuserId;

//   Logindata({
//     required this.loggedinornot,
//     required this.loggedinuserId,
//   });

//   factory Logindata.fromJson(Map<String, dynamic> json) => Logindata(
//         loggedinornot: json["loggedinornot"],
//         loggedinuserId: json["loggedinuserID"],
//       );

//   Map<String, dynamic> toJson() => {
//         "loggedinornot": loggedinornot,
//         "loggedinuserID": loggedinuserId,
//       };
// }

class LoginOrNot {
  String loggedinornot;
  String loggedinuserId;

  LoginOrNot({
    required this.loggedinornot,
    required this.loggedinuserId,
  });

  factory LoginOrNot.fromJson(Map<String, dynamic> json) => LoginOrNot(
        loggedinornot: json["loggedinornot"],
        loggedinuserId: json["loggedinuserID"],
      );

  Map<String, dynamic> toJson() => {
        "loggedinornot": loggedinornot,
        "loggedinuserID": loggedinuserId,
      };
}
