import 'dart:convert';

import '../../constants/SerializationKeyConstants.dart';

class APIResponseContext {
  String? status;
  String? processTime;
  String? receivedTime;
  String? application;
  String? version;

  APIResponseContext({
    required this.status,
    this.processTime,
    this.receivedTime,
    this.application,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return {
      SerializationKeyConstans.apiResponseContextStatus: status,
      SerializationKeyConstans.apiResponseContextProcessTime: processTime,
      SerializationKeyConstans.apiResponseContextReceivedTime: receivedTime,
      SerializationKeyConstans.apiResponseContextApplication: application,
      SerializationKeyConstans.apiResponseContextVersion: version,
    };
  }

  factory APIResponseContext.fromMap(Map<String, dynamic> map) {
    return APIResponseContext(
      status: map[SerializationKeyConstans.apiResponseContextStatus],
      processTime: map[SerializationKeyConstans.apiResponseContextProcessTime],
      receivedTime:
          map[SerializationKeyConstans.apiResponseContextReceivedTime],
      application: map[SerializationKeyConstans.apiResponseContextApplication],
      version: map[SerializationKeyConstans.apiResponseContextVersion],
    );
  }

  String toJson() => json.encode(toMap());

  factory APIResponseContext.fromJson(String source) =>
      APIResponseContext.fromMap(json.decode(source));
}
