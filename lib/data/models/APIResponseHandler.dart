import 'dart:convert';
import 'package:http/http.dart';
import 'package:xmp_svm_ui/constants/SerializationKeyConstants.dart';
import 'package:xmp_svm_ui/data/repository/ApiRequestRepository.dart';

class APIResponseHandler {
  Map<String, dynamic> handleResponse(Response response) {
    final String jsonString = response.body;
    final jsonDecodedData = jsonDecode(jsonString);


    if (response.statusCode == 200) {
         final Map<String, dynamic>? apiResponeContext =
        jsonDecodedData[SerializationKeyConstans.apiResponse]
            [SerializationKeyConstans.apiResponseContext];
      if (apiResponeContext != null) {
        if (apiResponeContext[SerializationKeyConstans.apiResponseContextStatus]
                .toLowerCase() ==
            "success") {
          final Map<String, dynamic> respData =
              jsonDecodedData[SerializationKeyConstans.apiResponse]
                  [SerializationKeyConstans.apiResponseData];
          return respData;
        } else {
          final List<dynamic>? apiErrors =
              jsonDecodedData[SerializationKeyConstans.apiResponse]
                  [SerializationKeyConstans.apiResponseError];
          if (apiErrors != null) {
            List<String> errors = [];
            for (var error in apiErrors) {
              errors.add(error[SerializationKeyConstans.errorDetailsMsg]);
            }
            throw ApiException(errors: errors);
          } else {
             throw ApiException(errors: ['Internal server error.']);
          }
        }
      } else {
        
         throw ApiException(errors: ['Internal server error.']);
      }
    } else if (response.statusCode == 500) {
      throw ApiException(errors: ['Internal server error.']);
    }
    return {};
  }
}
