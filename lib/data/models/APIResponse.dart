import 'dart:convert';

import 'APIError.dart';
import 'APIRequest.dart';
import 'APIResponseContext.dart';
import '../../constants/SerializationKeyConstants.dart';

class APIResponse {
  APIResponseContext? responseContext;
  Map<String, dynamic>? responseData;
  List<APIError>? apiError;
  APIRequest? apiRequest;

  APIResponse({
    required this.responseContext,
    required this.responseData,
    this.apiError,
    required this.apiRequest,
  });

  Map<String, dynamic> toMap() {
    return {
      SerializationKeyConstans.apiResponseContext: responseContext?.toMap(),
      SerializationKeyConstans.apiResponseData: responseData,
      SerializationKeyConstans.apiResponseError:
          apiError?.map((x) => x.toMap()).toList(),
      SerializationKeyConstans.apiRequest: apiRequest?.toMap(),
    };
  }

  factory APIResponse.fromMap(Map<String, dynamic> map) {
    return APIResponse(
      responseContext: APIResponseContext.fromMap(
          map[SerializationKeyConstans.apiResponseContext]),
      responseData: Map<String, dynamic>.from(
          map[SerializationKeyConstans.apiResponseData]),
      apiError: List<APIError>.from(
          map[SerializationKeyConstans.apiResponseError]
              ?.map((x) => APIError.fromMap(x))),
      apiRequest: APIRequest.fromMap(map[SerializationKeyConstans.apiRequest]),
    );
  }

  String toJson() => json.encode(toMap());

  factory APIResponse.fromJson(String source) {
    var jsonData = json.decode(source);
    return APIResponse.fromMap(jsonData["ApiRespone"] as Map<String, dynamic>);
  }
}
