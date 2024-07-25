import "dart:convert";
import "dart:developer";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:http/http.dart";
import "package:http_parser/http_parser.dart";

import "../../../setup.dart";

class Api {
  // baseUrl
  static const String BASEURL = "10.10.2.97:8080";

  // APIS
  static String apiPostRegister = "/api/user/settings/register";
  static String apiCheckPassword = "/api/email/check-password";
  static String apiLogin = "/api/auth";

  // headers
  static Map<String, String> headers = <String, String>{
    "Content-Type": "application/json",
    "Authorization": "$token",
    // "Accept": "application/json",
    // "Cookie":"JSESSIONID=F9BCE137AC610BEB0A3EC80AD44F5EA6",
  };

  //methods
  static Future<String?> GET({required String api, Map<String, String>? params}) async {
    final Uri url = Uri.http(BASEURL, api, params);
    final http.Response response = await http.get(url, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> POST({
    required String api,
    required Map<String, dynamic>? body,
  }) async {
    final Uri url = Uri.http(
      BASEURL,
      api,
    );
    log("URL  $url");
    final http.Response response = await http.post(
      url,
      headers: headers, // Bu yerga header qo'shildi
      body: jsonEncode(body),
    );
    log("response: ${response.body}");
    debugPrint("<<<statuseCode: ${response.statusCode} >>>>>>>>>>");
    if (response.statusCode == 200 || response.statusCode == 201) {
      log("Response body:>><<  ${response.body} >><<");
      return response.body;
    }
    return null;
  }

  static Future<String?> PUT(
    String api,
    Map<String, dynamic> body,
    Map<String, dynamic> param,
  ) async {
    final Uri url = Uri.http(BASEURL, api, param);
    final http.Response response =
        await http.put(url, body: jsonEncode(body), headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> MULTIPART(
    String api,
    String filePath,
    Map<String, String> body,
  ) async {
    final Uri uri = Uri.http(BASEURL, api);
    final http.MultipartRequest request = MultipartRequest("POST", uri);
    request.headers.addAll(headers);
    request.files.add(
      await MultipartFile.fromPath(
        "file",
        filePath,
        contentType: MediaType("file", "png"),
      ),
    );
    request.fields.addAll(body);
    final StreamedResponse response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.stream.bytesToString();
    } else {
      return response.reasonPhrase;
    }
  }

  static Future<String?> PATCH(
    String api,
    Map<String, String> params,
    Map<String, dynamic> body,
  ) async {
    final Uri url = Uri.http(BASEURL, api);
    final http.Response response =
        await http.patch(url, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> DELETE(String api, Map<String, String> params) async {
    final Uri url = Uri.http(BASEURL, api, params);
    final http.Response response = await http.delete(url, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  /// params

  static Map<String, String> emptyParams() => <String, String>{};

  /// body

  static Map<String, dynamic> bodyEmpty() => <String, dynamic>{};
}
