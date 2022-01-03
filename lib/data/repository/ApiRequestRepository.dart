import 'dart:convert';
import 'package:xmp_svm_ui/data/models/APIContext.dart';
import '/data/models/APIResponseHandler.dart';
import '/data/data_provider/APIDataProvider.dart';
import '/data/models/APIRequest.dart';
import '/data/models/ApiRequestBuilder.dart';

class ApiException implements Exception {
  List<String>? errors;

  ApiException({
    this.errors,
  });
}

class ApiRequestRepository {
  // APIDataProvider apiDataProvider = APIDataProvider();
  // ApiRequestBuilder apiRequestBuilder = ApiRequestBuilder();
  // APIResponseHandler apiResponseHandler = APIResponseHandler();

  fetchData(String endPoint, String txname, Map<String, dynamic> mandParams,
      Map<String, dynamic> addParams, bool isRealApi) async {
    if (isRealApi) {
      fetchRealData(endPoint, txname, mandParams, addParams);
    } else {
      APIDataProvider apiDataProvider = APIDataProvider();
      Map<String, dynamic>? _apiResponse;
      Map<String, dynamic>? _apiResponseData;

      APIContext apiContext = APIContext(
        transactionName: txname,
        application: "SVM",
        createdOn: DateTime.now().toIso8601String(),
        username: "admin",
        transactionProtocol: "SYNC",
        version: "1.0",
      );

      APIRequest apiRequest = APIRequest(
          apiContext: apiContext,
          apiMandatoryParams: mandParams,
          apiAdditionalParams: addParams);
      var jsonResponse = await apiDataProvider.fetchData(apiRequest);

      if (jsonResponse.isNotEmpty) {
        var responseMapData = json.decode(jsonResponse);
        _apiResponse = responseMapData["ApiResponse"];
        _apiResponseData = responseMapData["ApiResponse"]["ApiResponsedata"];

        if (_apiResponse != null) {
          if (_apiResponse['ApiResponseContext']['status'].toLowerCase() ==
              'success') {
            if (_apiResponseData != null) {
              return _apiResponseData;
            }
          } else {
            throw ApiException(errors: responseMapData['ApiErrors']);
          }
        }
      } else {
        throw ApiException(errors: ['api response empty']);
      }
    }
  }

  fetchRealData(String endPoint, String txname, Map<String, dynamic> mandParams,
      Map<String, dynamic> addParams) async {
    APIDataProvider apiDataProvider = APIDataProvider();
    ApiRequestBuilder apiRequestBuilder = ApiRequestBuilder();
    APIResponseHandler apiResponseHandler = APIResponseHandler();
    String finalReq = apiRequestBuilder.buildRequest(
      txname,
      mandParams,
      addParams,
    );
    var serverRes = await apiDataProvider.fetchOriginalData(endPoint, finalReq);
    try {
      final respData = apiResponseHandler.handleResponse(serverRes);
      return respData;
    } on ApiException catch (e) {
      throw ApiException(errors: e.errors);
    }
  }
}
