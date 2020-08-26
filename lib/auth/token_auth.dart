import 'package:post_app/networking/ApiProvider.dart';
import 'dart:async';
import 'package:post_app/models/user.dart';

class TokenAuth {
  ApiProvider _provider = ApiProvider();
  String header = 'Authorization';
  String token_prefix = "Token ";
  String mobile_url = "auth/mobile/";  // TODO base url - "api/"
  String email_url = "auth/email/";  // TODO base url - "api/"
  String token_url = "auth/token/";  // TODO base url - "api/"

  Future<String> signInMobile(String mobile) async {
    final response = await _provider.post(mobile_url, {'mobile': mobile});
    return response;
  }

  Future<String> signInEmail(String email) async {
    final response = await _provider.post(email_url, {'email': email});
    return response;
  }

  Future<String> getToken(String auth_type, String auth, String code) async {
    Map <String,String> body = {'token': code};
    if(auth_type == 'mobile'){
      body['mobile'] = auth;
    }else{
      body['email'] = auth;
    }
    final response = await _provider.post(token_url, body);
    return response;
  }
}