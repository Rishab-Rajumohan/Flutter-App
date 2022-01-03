import 'dart:convert';

import '../../constants/SerializationKeyConstants.dart';

class APIContext {
  String? application;
  String? transactionName;
  String? transactionProtocol;
  String? version;
  String? createdOn;
  String? username;

  APIContext({
    this.application,
    required this.transactionName,
    this.transactionProtocol,
    this.version,
    this.createdOn,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      SerializationKeyConstans.application: application,
      SerializationKeyConstans.transationName: transactionName,
      SerializationKeyConstans.transationProtocol: transactionProtocol,
      SerializationKeyConstans.version: version,
      SerializationKeyConstans.createdOn: createdOn,
      SerializationKeyConstans.username: username,
    };
  }

  factory APIContext.fromMap(Map<String, dynamic> map) {
    return APIContext(
      application: map[SerializationKeyConstans.application],
      transactionName: map[SerializationKeyConstans.transationName],
      transactionProtocol: map[SerializationKeyConstans.transationProtocol],
      version: map[SerializationKeyConstans.version],
      createdOn: map[SerializationKeyConstans.createdOn],
      username: map[SerializationKeyConstans.username],
    );
  }

  String toJson() => json.encode(toMap());

  factory APIContext.fromJson(String source) =>
      APIContext.fromMap(json.decode(source));
}
