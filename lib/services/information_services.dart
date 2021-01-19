part of 'services.dart';

class InformationServices {
  static Future<ApiReturnValue<List<Information>>> getInformations(
      {http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }

    String url = baseURL + "information";

    var response =
        await client.get(url, headers: {"Authorization": "${User.token}"});

    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Gagal Ambil Data");
    }

    var data = jsonDecode(response.body);

    List<Information> informations =
        (data['data'] as Iterable).map((e) => Information.fromJson(e)).toList();

    return ApiReturnValue(value: informations);
  }

  //// GetInformation with mockInformations
  static Future<ApiReturnValue<List<Information>>> getInformationss() async {}
}
