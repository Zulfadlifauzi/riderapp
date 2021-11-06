import 'dart:convert';

import 'package:riderapp/models/login.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url1 = 'http://api.staging.tarsoft.co/api/login';

    final response =
        await http.post(Uri.parse(url1), body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.statusCode);
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
