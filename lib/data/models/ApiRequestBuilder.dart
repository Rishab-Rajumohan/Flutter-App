import 'dart:convert';

import 'package:xmp_svm_ui/data/models/APIContext.dart';
import 'package:xmp_svm_ui/data/models/APIRequest.dart';

class ApiRequestBuilder {
  String buildRequest(String txname, Map<String, dynamic> mandParams,
      Map<String, dynamic>? additionalParams) {
    APIContext apiContext = APIContext(
      transactionName: txname,
      application: "SVM",
      createdOn: DateTime.now().millisecondsSinceEpoch.toString(),
      username: "admin",
      transactionProtocol: "SYNC",
      version: "1.0",
    );

    APIRequest apiRequest = APIRequest(
        apiContext: apiContext,
        apiMandatoryParams: mandParams,
        apiAdditionalParams: additionalParams);
    Map<String, dynamic> finalReq = {"ApiRequest": apiRequest.toMap()};
    return jsonEncode(finalReq);
  }
}
