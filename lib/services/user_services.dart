part of 'services.dart';

class UserServices {
  ////SignIn with API
  static Future<ApiReturnValue<User>> signIn(String email, String password,
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }

    String url = baseURL + "login";

    var response = await client.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }

    var data = jsonDecode(response.body);

    User.token = data['access_token'];
    User value = User.fromJson(data['user']);

    return ApiReturnValue(value: value);
  }

  //// SignIn with mockUser
  // static Future<ApiReturnValue<User>> signIn(
  //     String email, String password) async {
  //   await Future.delayed(Duration(milliseconds: 500));

  //   return ApiReturnValue(value: mockUser);
  // }
}
