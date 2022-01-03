class SerializationKeyConstans {
  //End Point keys

  static const String commonEP = "common";
  static const String facilityEP = "facility";
  static const String partyEp = "party";
  static const String serviceRequestEp = "service";

  // ApiContext Keys
  static const String application = "application";
  static const String transationName = "txnId";
  static const String transationProtocol = "txprotocol";
  static const String version = "version";
  static const String createdOn = "createdOn";
  static const String username = "username";

  // ApiError Keys
  static const String errorId = "id";
  static const String errorType = "type";
  static const String errorCode = "code";
  static const String errorShortMsg = "shortmsg";
  static const String errorDetailsMsg = "detailmsg";
  static const String requiredUri = "requri";

  // ApiRequest Keys
  static const String apiContext = "ApiContext";
  static const String apiMandatoryParams = "ApiMandatoryParams";
  static const String apiAdditionalParams = "ApiAdditionalParams";

  // ApiResponseContext Keys
  static const String apiResponseContextStatus = "status";
  static const String apiResponseContextProcessTime = "process - time";
  static const String apiResponseContextReceivedTime = "receivedtime";
  static const String apiResponseContextApplication = "application";
  static const String apiResponseContextVersion = "version";

  // ApiResponse Keys
  static const String apiResponseContext = "ApiResponseContext";
  static const String apiResponseData = "ApiResponseData";
  static const String apiResponse = "ApiResponse";
  static const String apiResponseError = "ApiErrors";
  static const String apiRequest = "ApiRequest";
}
