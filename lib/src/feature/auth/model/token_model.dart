
import "dart:convert";

TokenModel tokenModelFromJson(String str) => TokenModel.fromJson(json.decode(str));

String tokenModelToJson(TokenModel data) => json.encode(data.toJson());

class TokenModel {

    TokenModel({
        this.token,
        this.refreshToken,
    });

    factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        token: json["token"],
        refreshToken: json["refreshToken"],
    );
    String? token;
    String? refreshToken;

    Map<String, dynamic> toJson() => {
        "token": token,
        "refreshToken": refreshToken,
    };
}
