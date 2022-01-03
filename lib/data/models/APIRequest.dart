import 'dart:convert';

import 'APIContext.dart';
import '../../constants/SerializationKeyConstants.dart';

class APIRequest {
  APIContext? apiContext;
  Map<String, dynamic>? apiMandatoryParams;
  Map<String, dynamic>? apiAdditionalParams;

  APIRequest({
    required this.apiContext,
    required this.apiMandatoryParams,
    this.apiAdditionalParams,
  });

  Map<String, dynamic> toMap() {
    return {
      SerializationKeyConstans.apiContext: apiContext?.toMap(),
      SerializationKeyConstans.apiMandatoryParams: apiMandatoryParams,
      SerializationKeyConstans.apiAdditionalParams: apiAdditionalParams,
    };
  }

  factory APIRequest.fromMap(Map<String, dynamic> map) {
    return APIRequest(
      apiContext: APIContext.fromMap(map[SerializationKeyConstans.apiContext]),
      apiMandatoryParams: Map<String, dynamic>.from(
          map[SerializationKeyConstans.apiMandatoryParams]),
      apiAdditionalParams: Map<String, dynamic>.from(
          map[SerializationKeyConstans.apiAdditionalParams]),
    );
  }

  String toJson() => json.encode(toMap());

  factory APIRequest.fromJson(String source) =>
      APIRequest.fromMap(json.decode(source));
}
