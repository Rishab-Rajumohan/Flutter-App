import 'dart:convert';

import '../../constants/SerializationKeyConstants.dart';

class APIError {
  String? errorId;
  String? errorType;
  int? errorCode;
  String? errorShortMsg;
  String? errorDetailMsg;
  String? requiredURI;

  APIError({
    this.errorId,
    this.errorType,
    this.errorCode,
    required this.errorShortMsg,
    required this.errorDetailMsg,
    this.requiredURI,
  });

  Map<String, dynamic> toMap() {
    return {
      SerializationKeyConstans.errorId: errorId,
      SerializationKeyConstans.errorType: errorType,
      SerializationKeyConstans.errorCode: errorCode,
      SerializationKeyConstans.errorShortMsg: errorShortMsg,
      SerializationKeyConstans.errorDetailsMsg: errorDetailMsg,
      SerializationKeyConstans.requiredUri: requiredURI,
    };
  }

  factory APIError.fromMap(Map<String, dynamic> map) {
    return APIError(
      errorId: map[SerializationKeyConstans.errorId],
      errorType: map[SerializationKeyConstans.errorType],
      errorCode: map[SerializationKeyConstans.errorCode],
      errorShortMsg: map[SerializationKeyConstans.errorShortMsg],
      errorDetailMsg: map[SerializationKeyConstans.errorDetailsMsg],
      requiredURI: map[SerializationKeyConstans.requiredUri],
    );
  }

  String toJson() => json.encode(toMap());

  factory APIError.fromJson(String source) =>
      APIError.fromMap(json.decode(source));
}
