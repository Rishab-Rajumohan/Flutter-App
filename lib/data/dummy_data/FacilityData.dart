import 'dart:convert';

// ignore: non_constant_identifier_names
final SVM_FACILITY_SEARCH = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "facilityList": [
        {
          "facilityId": "10000",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Janitorial Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "janitorial@gmail.com"
        },
        {
          "facilityId": "10001",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Clothing Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "clothing@gmail.com"
        },
        {
          "facilityId": "10002",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Furniture Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "furniture@gmail.com"
        },
        {
          "facilityId": "10003",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Embroidery Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "embroidery@gmail.com"
        },
        {
          "facilityId": "10010",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Shipping Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "shipping@gmail.com"
        },
        {
          "facilityId": "10011",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Printing Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "printing@gmail.com"
        },
        {
          "facilityId": "10012",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "M.C.I. Shirley Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "shirley@gmail.com"
        },
        {
          "facilityId": "10013",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Shirley Showroom Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "showroom@gmail.com"
        },
        {
          "facilityId": "10020",
          "facilityTypeName": "PLANT",
          "facilityName": "Metal Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "metal@gmail.com"
        },
        {
          "facilityId": "10021",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Mattress Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "mattress@gmail.com"
        },
        {
          "facilityId": "10022",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Sign Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "sign@gmail.com"
        },
        {
          "facilityId": "10023",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Flag Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "flag@gmail.com"
        },
        {
          "facilityId": "10024",
          "facilityTypeName": "PLANT",
          "facilityName": "Embroidery Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "embroidery@gmail.com"
        }
      ],
      "facilityListSize": "13",
      "viewIndex": "0",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_SEARCH",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "facilityId": "",
        "facilityTypeId": "",
        "viewIndex": "",
        "viewSize": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_ONLY_FOR_PAGINATION = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "facilityList": [
        {
          "facilityId": "10000",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Janitorial Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "janitorial@gmail.com"
        },
        {
          "facilityId": "10001",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Clothing Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "clothing@gmail.com"
        },
        {
          "facilityId": "10002",
          "facilityTypeName": "WAREHOUSE",
          "facilityName": "Furniture Shop",
          "registrationNo": "56965",
          "locationSeqId": "HSR",
          "ownerName": "Owner",
          "contactNumber": "8789865986",
          "infoString": "furniture@gmail.com"
        }
      ],
      "facilityListSize": "13",
      "viewIndex": "0",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_SEARCH",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "facilityId": "",
        "facilityTypeId": "",
        "viewIndex": "",
        "viewSize": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_CREATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_CREATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "facilityTypeId": "",
        "ownerPartyId": "",
        "registrationType": "",
        "facilityName": "",
        "registrationNo": "",
        "facilityId": "",
        "attnName": "", //Responsible Name
        "contactMechPurposeTypeId": "", //Address
        "address1": "",
        "address2": "",
        "city": "",
        "stateProvinceGeoId": "",
        "postalCode": "",
        "contactMechId": "",
        "countryGeoId": "",
        "contactNumber": "", //Phone Number
        "emailAddress": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_UPDATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_UPDATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "facilityId": "",
        "facilityTypeId": "",
        "ownerPartyId": "",
        "registrationType": "",
        "facilityName": "",
        "registrationNo": "",
        "attnName": "", //Responsible Name
        "contactMechPurposeTypeId": "", //Address
        "address1": "",
        "address2": "",
        "city": "",
        "stateProvinceGeoId": "",
        "postalCode": "",
        "contactMechId": "",
        "countryGeoId": "",
        "contactNumber": "", //Phone Number
        "emailAddress": "", //Email Id
        "telecomContactMechId": "",
        "emailContactMechId": "",
        "postalContactMechId": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

//Need to set real value[pending]
// ignore: non_constant_identifier_names
final SVM_FACILITY_GET = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "facilityId": "",
      "facilityTypeId": "",
      "ownerPartyId": "",
      "registrationType": "",
      "facilityName": "",
      "registrationNo": "",
      "attnName": "", //Responsible Name
      "contactMechPurposeTypeId": "", //Address
      "address1": "",
      "address2": "",
      "city": "",
      "stateProvinceGeoId": "",
      "postalCode": "",
      "contactMechId": "",
      "countryGeoId": "",
      "contactNumber": "", //Phone Number
      "emailAddress": "", //Email Id
      "telecomContactMechId": "",
      "emailContactMechId": "",
      "postalContactMechId": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_GET",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"facilityId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_LOC_LIST_VIEW = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "locationList": [
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "Finished Goods",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "Finished Goods",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "Finished Goods",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "Finished Goods",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "Finished Goods",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        },
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        }
      ],
      "locationListSize": "11",
      "viewIndex": "0",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_LOC_LIST_VIEW",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"facilityId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_LOC_LIST_VIEW_WITH_SEQ_ID = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "locationList": [
        {
          "facilityId": "10002",
          "locationSeqId": "A02AI1S5L2P3",
          "areaId": "A02",
          "aisleId": "AI1",
          "sectionId": "S5",
          "levelId": "L2",
          "positionId": "P3"
        }
      ],
      "locationListSize": "1",
      "viewIndex": "0",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_LOC_LIST_VIEW",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"facilityId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_LOC_LIST_CREATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_LOC_LIST_CREATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "facilityId": "",
        "sectionId": "",
        "positionId": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
Map<String, dynamic> SVM_FACILITY_CONTENT_LIST_GET = {
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "facilityContentList": [
        {
          "contentId": "10461",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "RPA Robotic Process Automation in CREST ERP",
          "fileName": "SampleXLForUpload (7).xlsx",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10462",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "RPA Robotic Process Automation in CREST ERP",
          "fileName": "SampleXLForUpload (10).xlsx",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10463",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "RPA Robotic Process Automation in CREST ERP",
          "fileName": "ZT Demo_Flow[161].docx",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10464",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "RPA Robotic Process Automation in CREST ERP",
          "fileName": "Vasanth M (10).docx",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10465",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "Some sample content description",
          "fileName": "Vasanth M (10).docx",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10470",
          "status": "CTNT_INITIAL_DRAFT",
          "contentDescription": "images (1).jpg",
          "fileName": "images (1).jpg",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10480",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "Fiscal Month Creation Issue.JPG",
          "fileName": "Fiscal Month Creation Issue.JPG",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10481",
          "status": "CTNT_INITIAL_DRAFT",
          "contentDescription": "Activities - Issue.JPG	",
          "fileName": "Activities - Issue.JPG	",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10492",
          "status": "CTNT_PUBLISHED",
          "contentDescription": "RPA Robotic Process Automation in CREST ERP",
          "fileName": "Fiscal Month Creation Issue.JPG",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10510",
          "status": "CTNT_INITIAL_DRAFT",
          "contentDescription": "XMP-CRE-HelpdeskListview_Changes.docx",
          "fileName": "XMP-CRE-HelpdeskListview_Changes.docx",
          "file": "",
          "updatedDate": "22/06/2021"
        },
        {
          "contentId": "10500",
          "status": "CTNT_INITIAL_DRAFT",
          "contentDescription": "XMP-CRE-HelpdeskListview_Changes.docx",
          "fileName": "XMP-CRE-HelpdeskListview_Changes.docx",
          "file": "",
          "updatedDate": "22/06/2021"
        }
      ],
      "facilityContentListSize": "11",
      "viewIndex": "0",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_CONTENT_LIST_GET",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"facilityId": ""},
      "ApiAdditionalParams": {}
    }
  }
};

// ignore: non_constant_identifier_names
final SVM_FACILITY_CONTENT_CREATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_CONTENT_CREATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"statusId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_CONTENT_REMOVE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_CONTENT_REMOVE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"facilityId": "", "contentTypeId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// final facilityAddAddressResponse = json.encode({
//   "ApiResponse": {
//     "ApiResponseContext": {
//       "status": "success",
//       "receivedTime": "2020-aug-02 13:25",
//       "processTime": "130",
//       "applicationName": "SVM",
//       "version": ""
//     },
//     "ApiResponsedata": {},
//     "ApiRequest": {
//       "ApiContext": {
//         "application": "SVM",
//         "applicationId": "123456789",
//         "txnid": "SVM_FACILITY_ADDRESS_CREATE",
//         "txprotocol": "SYNC",
//         "version": "1.0",
//         "createdOn": "19-jul-20 12:06:10",
//         "correlationid": "ABCD-12345"
//       },
//       "ApiMandatoryParams": {
//         "purposeId": "",
//         "addressline1": "",
//         "addressline2": "",
//         "city": "",
//         "state": "",
//         "postalcode": "",
//         "country": ""
//       },
//       "ApiAdditionalParams": {}
//     }
//   }
// });

//New data
// ignore: non_constant_identifier_names
final SVM_FACILITY_SEARCH_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "facilityTypeList": [
        {"facilityTypeId": "12", "description": "Warehouse"},
        {"facilityTypeId": "13", "description": "Building"},
        {"facilityTypeId": "14", "description": "Plant"}
      ],
      "orgList": [
        {"groupName": "Paulsons Group of Companies ", "partyId": "10230"},
        {"groupName": "Printing Shop", "partyId": "10037"},
        {"groupName": "Xmplar Management Solutions ", "partyId": "10380"},
        {"groupName": "Your Company Name Here", "partyId": "Company"}
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_SEARCH_DDL",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_MASTER_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "facilityTypeList": [
        {"facilityTypeId": "12", "description": "Warehouse"},
        {"facilityTypeId": "13", "description": "Building"},
        {"facilityTypeId": "14", "description": "Plant"}
      ],
      "gstList": [
        {"enumId": "SGST", "description": "SGST"},
        {"enumId": "UGST", "description": "UGST"},
        {"enumId": "IGST", "description": "IGST"}
      ],
      "stateList": [
        {"geoId": "KERALA", "geoName": "KERALA"},
        {"geoId": "TAMILNADU", "geoName": "Tamil Nadu"},
        {"geoId": "KARNATAKA", "geoName": "Karnataka"}
      ],
      "countryList": [
        {"geoId": "INDIA", "geoName": "India"},
        {"geoId": "CHINA", "geoName": "China"},
        {"geoId": "ALBANIA", "geoName": "Albania"}
      ],
      "orgList": [
        {"groupName": "Paulsons Group of Companies ", "partyId": "10230"},
        {"groupName": "Printing Shop", "partyId": "10037"},
        {"groupName": "Xmplar Management Solutions ", "partyId": "10380"},
        {"groupName": "Your Company Name Here", "partyId": "Company"}
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_MASTER_DDL",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_FACILITY_CONTENT_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "contentList": [
        {"contentTypeId": "123", "description": "Document"},
        {"contentTypeId": "124", "description": "Template or Form"},
        {"contentTypeId": "125", "description": "Page Node"},
        {"contentTypeId": "126", "description": "Outline Node"}
      ],
      "statusList": [
        {"statusId": "567", "description": "In Progress"},
        {"statusId": "568", "description": "Published"},
        {"statusId": "569", "description": "Final Draft"}
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_FACILITY_CONTENT_DDL",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {},
      "ApiAdditionalParams": {}
    }
  }
});
