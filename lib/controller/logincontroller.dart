import 'package:evento_firsttry/packagelocation.dart';

import 'dart:convert';
import 'package:flutter/services.dart';

// import 'package:http/http.dart' as http;

class LoginCheck {
  Future<List<LoginOrNot>> getLoginStatus() async {
    final jsondata = await rootBundle.loadString('assets/json/logindata.json');

    final data = await json.decode(jsondata) as List<dynamic>;

    return data.map((e) => LoginOrNot.fromJson(e)).toList();
  }

  void setLoginStatus(LoginOrNot s) async {
    Map<String, dynamic> logMap = s.toJson();
    var json = jsonEncode(logMap);
    debugPrint(json);
  }
}
