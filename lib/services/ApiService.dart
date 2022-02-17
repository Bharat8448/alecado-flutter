import 'dart:convert';

import 'package:alecado/config.dart';
import 'package:alecado/models/loginRequestModel.dart';
import 'package:alecado/models/loginResponseModel.dart';
import 'package:alecado/services/sharedService.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type':'application/json',
    };
    var url = Uri.http(Config.apiUrl, Config.LoginApi);
    var resposnse = await client.post(url, headers: requestHeaders, body: jsonEncode(model.toJson()),);
    if(resposnse.statusCode==200) {
      // Shared
      await SharedService.setLoginDetails(loginResponseJson(resposnse.body));
      return true;
    }
    else{
      return false;
    }
  }
}