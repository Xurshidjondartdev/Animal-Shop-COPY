import "dart:convert";
import "dart:developer";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:http_interceptor/http_interceptor.dart";
import "package:http_parser/http_parser.dart";
import "../../../setup.dart";
import "api_interceptor.dart";

class Api {
  // BASEURL faqat host va portni o‘z ichiga oladi
  static const String BASEURL = "45.138.158.240:8095";

  // API yo‘llarini to‘g‘ri formatlash
  static const String apiPostRegister = "/api/user/settings/register";
  static const String apiCheckPassword = "/api/email/check-password";
  static const String apiLogin = "/api/auth";
  static const String apiGetPostAll = "/api/post/get-all";
  static const String postProduct = "/api/post/save-post";

  // headers
  static Map<String, String> headers = {
    "Content-Type": "application/json",
    "Authorization": "$token",
  };

  // Intercepted client
  static final http.Client client = InterceptedClient.build(
    interceptors: [ApiInterceptor()],
  );

  // Generalized response handler
  static Future<String?> handleResponse(http.Response response) async {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    log("Error: ${response.statusCode} - ${response.reasonPhrase}");
    return null;
  }

  // GET method
  static Future<String?> GET({required String api, Map<String, String>? params}) async {
    final Uri url = Uri.http(BASEURL, api, params);
    log("URL: $url");
    final http.Response response = await client.get(url, headers: headers);
    return handleResponse(response);
  }

  // POST method
  static Future<String?> POST({
    required String api,
    required Map<String, dynamic>? body,
    Map<String, String>? param,
  }) async {
    final Uri url = Uri.http(BASEURL, api, param);
    log("URL: $url");
    final http.Response response = await client.post(
      url,
      headers: headers,
      body: jsonEncode(body),
    );
    log("Response: ${response.body}");
    debugPrint("StatusCode: ${response.statusCode}");
    return handleResponse(response);
  }

  // PUT method
  static Future<String?> PUT(
    String api,
    Map<String, dynamic> body,
    Map<String, String>? param,
  ) async {
    final Uri url = Uri.http(BASEURL, api, param);
    final http.Response response = await client.put(
      url,
      headers: headers,
      body: jsonEncode(body),
    );
    return handleResponse(response);
  }

  // MULTIPART method
  static Future<String?> MULTIPART(
    String api,
    String filePath,
    Map<String, String> body,
  ) async {
    final Uri uri = Uri.http(BASEURL, api);
    final http.MultipartRequest request = http.MultipartRequest("POST", uri)
      ..headers.addAll(headers)
      ..files.add(
        await http.MultipartFile.fromPath(
          "file",
          filePath,
          contentType: MediaType("image", "png"), // To'g'ri contentType
        ),
      )
      ..fields.addAll(body);
    final http.StreamedResponse response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.stream.bytesToString();
    }
    log("Error: ${response.statusCode} - ${response.reasonPhrase}");
    return response.reasonPhrase;
  }

  // PATCH method
  static Future<String?> PATCH(
    String api,
    Map<String, String> params,
    Map<String, dynamic> body,
  ) async {
    final Uri url = Uri.http(BASEURL, api, params);
    final http.Response response = await client.patch(
      url,
      headers: headers,
      body: jsonEncode(body),
    );
    return handleResponse(response);
  }

  // DELETE method
  static Future<String?> DELETE(String api, Map<String, String>? params) async {
    final Uri url = Uri.http(BASEURL, api, params);
    final http.Response response = await client.delete(
      url,
      headers: headers,
    );
    return handleResponse(response);
  }

  /// params
  static Map<String, String> emptyParams() => <String, String>{};
  static Map<String, String> paramGetPostAll() => {
        "page": "1",
        "size": "2",
      };

  /// body
  static Map<String, dynamic> bodyEmpty() => <String, dynamic>{};
}
