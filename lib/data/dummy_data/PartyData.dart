import 'dart:convert';

//Dropdown Part
//will use role master API for both search screen and create role screen
// ignore: non_constant_identifier_names
final SVM_PARTY_ROLE_MASTER_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "roleTypeList": [
        {"roleTypeId": "12", "description": "Customer"},
        {"roleTypeId": "13", "description": "Account"},
        {"roleTypeId": "14", "description": "supplier"}
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_ROLE_MASTER_DDL",
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
final SVM_PARTY_MASTER_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "roleTypeList": [
        {"roleTypeId": "12", "description": "Customer"},
        {"roleTypeId": "13", "description": "Account"},
        {"roleTypeId": "14", "description": "supplier"}
      ],
      "currencyList": [
        {"uomId": "12", "description": "INR"},
        {"uomId": "13", "description": "USD"},
        {"uomId": "14", "description": "CRC"}
      ],
      "contactMechPurposeList": [
        {
          "contactMechPurposeTypeId": "12",
          "description": "Shipping Destination Address"
        },
        {
          "contactMechPurposeTypeId": "13",
          "description": "Payment(AR) address"
        },
        {"contactMechPurposeTypeId": "14", "description": "Primary address"}
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
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_MASTER_DDL",
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
final SVM_PARTY_TDS_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "roleTypeList": [
        {"roleTypeId": "12", "description": "Customer"},
        {"roleTypeId": "13", "description": "Account"},
        {"roleTypeId": "14", "description": "supplier"}
      ],
      "paymentTypeList": [
        {"enumId": "12", "description": "INR"},
        {"enumId": "13", "description": "USD"},
        {"enumId": "14", "description": "CRC"}
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_TDS_DDL",
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
final SVM_PARTY_SEARCH = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "partySearchResultList": [
        {
          "partyId": "P10000011",
          "partyName": "Apppl-tn-new",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "Apple@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "12841",
          "partyName": "Tops Corn Flacks",
          "partyType": "Party Group",
          "roleType": "Account",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "Tops@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "P10000009",
          "partyName": "SAMSUNG India Pvt Ltd",
          "partyType": "Party Group",
          "roleType": "Internal Organization",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "samsung@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "12810",
          "partyName": "Bajaj Finserve",
          "partyType": "Party Group",
          "roleType": "Account",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "bajaj@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "P10000008",
          "partyName": "MYNTRA Fashion World",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "myntra@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "P10000007",
          "partyName": "AJIO Fashion World",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "ajio@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "12801",
          "partyName": "XYZ India Pvt Ltd",
          "partyType": "Party Group",
          "roleType": "Account",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "xyz@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "12791",
          "partyName": "KYUR INFRA STRUCTURE",
          "partyType": "Party Group",
          "roleType": "Account",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "kyurinfo@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "200000301",
          "partyName": "VIVO Communications",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "vivo@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "12781",
          "partyName": "ATC INC",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "atc@gmail.com",
          "attnName": "admin", //Responsible Name
        },
        {
          "partyId": "P10000005",
          "partyName": "Ajanta INC",
          "partyType": "Party Group",
          "roleType": "Supplier",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "ajanta@gmail.com",
          "attnName": "admin", //Responsible Name
        }
      ],
      "partySearchResultSize": "11",
      "viewIndex": "0",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_SEARCH",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "roleTypeId": "",
        "viewIndex": "",
        "viewSize": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_SEARCH_ONLY_FOR_PAGINATION = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "partySearchResultList": [
        {
          "partyId": "P10000008",
          "partyName": "MYNTRA Fashion World",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "myntra@gmail.com"
        },
        {
          "partyId": "P10000007",
          "partyName": "AJIO Fashion World",
          "partyType": "Party Group",
          "roleType": "Customer",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "ajio@gmail.com"
        },
        {
          "partyId": "12791",
          "partyName": "KYUR INFRA STRUCTURE",
          "partyType": "Party Group",
          "roleType": "Account",
          "preferredCurrencyUomId": "",
          "contactNumber": "9876543210",
          "infoString": "kyurinfo@gmail.com"
        }
      ],
      "partySearchResultSize": "11",
      "viewIndex": "1",
      "viewSize": "",
      "highIndex": "",
      "lowIndex": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_SEARCH",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "roleTypeId": "",
        "viewIndex": "",
        "viewSize": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_CREATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_CREATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "roleTypeId": "", //Role
        "groupName": "", //Party Name
        "preferredCurrencyUomId": "", //	Currency Uom ,
        "addressList": [
          {
            "attnName": "", //Responsible Name
            "contactMechPurposeTypeId": "", //Address
            "address1": "",
            "address2": "",
            "city": "",
            "stateProvinceGeoId": "",
            "postalCode": "",
            "contactMechId": "",
            "countryGeoId": ""
          }
        ],
        "contactNumber": "", //Phone Number
        "emailAddress": "" //Email Id
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_UPDATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_UPDATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "roleTypeId": "", //Role
        "groupName": "", //Party Name
        "preferredCurrencyUomId": "", //	Currency Uom
        "contactNumber": "", //Phone Number
        "emailAddress": "", //Email Id ,
        "telecomContactMechId": "",
        "emailContactMechId": "" //Email Id
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_GET = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "partyId": "",
      "roleTypeId": "", //Role
      "groupName": "", //Party Name
      "preferredCurrencyUomId": "", //	Currency ,
      "addressList": [
        {
          "attnName": "", //Responsible Name
          "contactMechPurposeTypeId": "", //Address
          "address1": "",
          "address2": "",
          "city": "",
          "stateProvinceGeoId": "",
          "postalCode": "",
          "contactMechId": "",
          "countryGeoId": ""
        }
      ],
      "contactNumber": "", //Phone Number
      "emailAddress": "", //Email Id ,
      "telecomContactMechId": "",
      "emailContactMechId": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_GET",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"partyId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_CONTACT_CREATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": "", "contactMechId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_CONTACT_CREATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "contactMechId": "",
        "attnName": "", //Responsible Name
        "contactMechPurposeTypeId": "", //Address
        "address1": "",
        "address2": "",
        "city": "",
        "stateProvinceGeoId": "",
        "postalCode": "",
        "countryGeoId": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_CONTACT_UPDATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": "", "contactMechId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_CONTACT_UPDATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "contactMechId": "",
        "attnName": "", //Responsible Name
        "contactMechPurposeTypeId": "", //Address
        "address1": "",
        "address2": "",
        "city": "",
        "stateProvinceGeoId": "",
        "postalCode": "",
        "countryGeoId": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_CONTACT_REMOVE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_CONTACT_REMOVE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"partyId": "", "contactMechId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_ROLE_UPDATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_ROLE_UPDATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "addRoleList": {},
        "removeRoleList": {}
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_ROLE_LIST_VIEW = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "roleList": [
        {"roleTypeId": "", "description": ""}
      ],
      "roleListSize": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_ROLE_LIST_VIEW",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"partyId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_TDS_CREATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_TDS_CREATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {
        "partyId": "",
        "groupName": "",
        "tdsId": "",
        "residentialStatusId": "",
        "assessmentTypeId": "",
        "deducteeTypeId": "",
        "natureWorkId": "",
        "percentage": "",
        "purchaseGlAccountId": "",
        "panNo": "",
        "fromDate": "",
        "thruDate": ""
      },
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_TDS_UPDATE = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {"partyId": ""},
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_TDS_UPDATE",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"partyId": "", "assoId": "", "thruDate": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_TDS_LIST_GET = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "tdsList": [
        {
          "partyId": "",
          "groupName": "",
          "tdsId": "",
          "residentialStatusId": "",
          "assessmentTypeId": "",
          "deducteeTypeId": "",
          "natureWorkId": "",
          "percentage": "",
          "purchaseGlAccountId": "",
          "panNo": "",
          "fromDate": "",
          "thruDate": ""
        }
      ]
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_TDS_LIST_GET",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"partyId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_TDS_GET = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "partyId": "",
      "groupName": "",
      "tdsId": "",
      "residentialStatusId": "",
      "assessmentTypeId": "",
      "deducteeTypeId": "",
      "natureWorkId": "",
      "percentage": "",
      "purchaseGlAccountId": "",
      "panNo": "",
      "fromDate": "",
      "thruDate": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_TDS_GET",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"partyId": "", "assoId": ""},
      "ApiAdditionalParams": {}
    }
  }
});

// ignore: non_constant_identifier_names
final SVM_PARTY_TDSPAYMENT_DDL = json.encode({
  "ApiResponse": {
    "ApiResponseContext": {
      "status": "success",
      "receivedTime": "2020-aug-02 13:25",
      "processTime": "130",
      "applicationName": "SVM",
      "version": ""
    },
    "ApiResponsedata": {
      "residentialStatusId": "",
      "assessmentTypeId": "",
      "deducteeTypeId": "",
      "natureWorkId": "",
      "percentage": "",
      "purchaseGlAccountId": "",
      "salesGlAccountId": ""
    },
    "ApiRequest": {
      "ApiContext": {
        "application": "SVM",
        "txnid": "SVM_PARTY_TDSPAYMENT_DDL",
        "txprotocol": "SYNC",
        "version": "1.0",
        "createdOn": "19-jul-20 12:06:10",
        "username": "admin"
      },
      "ApiMandatoryParams": {"tdsId": ""},
      "ApiAdditionalParams": {}
    }
  }
});
