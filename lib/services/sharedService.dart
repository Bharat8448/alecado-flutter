
import 'dart:convert';

import 'package:alecado/models/loginResponseModel.dart';
import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Login_SignUp/login_page.dart';

class SharedService{
  static Future<bool> isLoggedIn() async{
    var isKeyExist = await APICacheManager().isAPICacheKeyExist('login-details');
    return isKeyExist;
  }

  static Future<LoginResponseModel?> logindetails() async {
    var isKeyExist = await APICacheManager().isAPICacheKeyExist('login-details');
    if (isKeyExist) {
      var cachedata = await APICacheManager().getCacheData('login-details');

      return loginResponseJson(cachedata.syncData);
    }
  }

  static Future<void> setLoginDetails(LoginResponseModel model) async {
    APICacheDBModel cacheDBModel = APICacheDBModel(key: 'login-details',
     syncData: jsonEncode(model.toJson()));

     await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<void> logout(BuildContext context) async{

    await APICacheManager().deleteCache('login-details');
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => LoginPage()));

  }
}