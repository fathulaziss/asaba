part of 'services.dart';

class UserServices {
  //// SignIn with API
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

  //// SignOut With API
  static Future<ApiReturnValue> signOut(String token,
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }

    String url = baseURL + "logout";

    var response =
        await client.get(url, headers: {"Authorization": "${User.token}"});

    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Gagal Ambil Data");
    }

    var data = jsonDecode(response.body);

    return ApiReturnValue(value: data);
  }

  //// SignIn with mockUser
  // static Future<ApiReturnValue<User>> signIn(
  //     String email, String password) async {
  //   await Future.delayed(Duration(milliseconds: 500));

  //   return ApiReturnValue(value: mockUser);
  // }

  //// Get Information with mockInformations
}
