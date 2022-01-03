import 'dart:convert';
import 'package:project/data/dummy_data/FacilityData.dart';
import 'package:project/data/dummy_data/PartyData.dart';
import 'package:project/data/models/APIRequest.dart';
import 'package:http/http.dart' as http;

class APIDataProvider {
  fetchData(APIRequest apiRequest) async {
    // await Future.delayed(Duration(seconds: 3));
    if (apiRequest.apiMandatoryParams == null ||
        apiRequest.apiMandatoryParams == {}) {
      return json.encode(
        {
          'ApiErrors': [
            {'msg': 'data not available'},
            {'msg': 'data not available'},
          ]
        },
      );
    } else if (apiRequest.apiMandatoryParams != null) {
      switch (apiRequest.apiContext?.transactionName) {
        case "SVM_FACILITY_SEARCH_DDL":
          return SVM_FACILITY_SEARCH_DDL;

        case "SVM_FACILITY_MASTER_DDL":
          return SVM_FACILITY_MASTER_DDL;

        case "SVM_FACILITY_CONTENT_DDL":
          return SVM_FACILITY_CONTENT_DDL;

        case "SVM_FACILITY_SEARCH":
          if (apiRequest.apiMandatoryParams?['viewIndex'] == 0)
            return SVM_FACILITY_SEARCH;
          else
            return SVM_FACILITY_ONLY_FOR_PAGINATION;

        case "SVM_FACILITY_CREATE":
          return SVM_FACILITY_CREATE;

        case "SVM_FACILITY_UPDATE":
          return SVM_FACILITY_UPDATE;

        case "SVM_FACILITY_GET":
          return SVM_FACILITY_GET;

        case "SVM_FACILITY_LOC_LIST_GET":
          if (apiRequest.apiMandatoryParams?['locationSeqId'] == null)
            return SVM_FACILITY_LOC_LIST_VIEW;
          else
            return SVM_FACILITY_LOC_LIST_VIEW_WITH_SEQ_ID;

        case "SVM_FACILITY_LOC_LIST_CREATE":
          return SVM_FACILITY_LOC_LIST_CREATE;

        case "SVM_FACILITY_CONTENT_LIST_GET":
          return json.encode(SVM_FACILITY_CONTENT_LIST_GET);

        case "SVM_FACILITY_CONTENT_LIST_CREATE":
          return SVM_FACILITY_CONTENT_CREATE;

        case "SVM_FACILITY_CONTENT_LIST_DELETE":
          if (apiRequest.apiMandatoryParams != null) {
            int inx = (apiRequest.apiMandatoryParams ?? {'index': 0})['index'];
            SVM_FACILITY_CONTENT_LIST_GET['ApiResponse']['ApiResponsedata']
                    ['facilityContentList']
                .removeAt(inx);
          }
          return json.encode(SVM_FACILITY_CONTENT_LIST_GET);

//For party
        case "SVM_PARTY_ROLE_MASTER_DDL":
          return SVM_PARTY_ROLE_MASTER_DDL;

        case "SVM_PARTY_MASTER_DDL":
          return SVM_PARTY_MASTER_DDL;

        case "SVM_PARTY_TDS_DDL":
          return SVM_PARTY_TDS_DDL;

        case "SVM_PARTY_SEARCH":
          if (apiRequest.apiMandatoryParams?['viewIndex'] == 0)
            return SVM_PARTY_SEARCH;
          else
            return SVM_PARTY_SEARCH_ONLY_FOR_PAGINATION;

        case "SVM_PARTY_CREATE":
          return SVM_PARTY_CREATE;

        case "SVM_PARTY_UPDATE":
          return SVM_PARTY_UPDATE;

        case "SVM_PARTY_GET":
          return SVM_PARTY_GET;

        case "SVM_PARTY_CONTACT_CREATE":
          return SVM_PARTY_CONTACT_CREATE;

        case "SVM_PARTY_CONTACT_UPDATE":
          return SVM_PARTY_CONTACT_UPDATE;

        case "SVM_PARTY_CONTACT_REMOVE":
          return SVM_PARTY_CONTACT_REMOVE;

        case "SVM_PARTY_ROLE_UPDATE":
          return SVM_PARTY_ROLE_UPDATE;

        case "SVM_PARTY_ROLE_LIST_VIEW":
          return SVM_PARTY_ROLE_LIST_VIEW;

        case "SVM_PARTY_TDS_CREATE":
          return SVM_PARTY_TDS_CREATE;

        case "SVM_PARTY_TDS_UPDATE":
          return SVM_PARTY_TDS_UPDATE;

        case "SVM_PARTY_TDS_LIST_GET":
          return SVM_PARTY_TDS_LIST_GET;

        case "SVM_PARTY_TDS_GET":
          return SVM_PARTY_TDS_GET;

        case "SVM_PARTY_TDSPAYMENT_DDL":
          return SVM_PARTY_TDSPAYMENT_DDL;

        default:
          return json.encode(
            {
              'ApiErrors': [
                {'msg': 'data not available'},
                {'msg': 'data not available'},
              ]
            },
          );
      }
    }
  }

  fetchOriginalData(String endPoint, String finalReq) async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "applicationId": "123",
      "token": "y4MibiJUusZwZC25NOVBEx3BD1"
    };
    var url =
        Uri.http('103.6.157.10:4750', '/crest/servicemgt/' + endPoint + '/v1/');
    final response = await http.post(url, headers: headers, body: finalReq);

    return response;
  }
}
