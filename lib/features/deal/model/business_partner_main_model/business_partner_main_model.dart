import 'bp_address.dart';
import 'contact_employee.dart';

class BusinessPartnerMainModel {
  String? odata;
  String? cardCode;
  String? cardName;
  String? cardType;
  String? properties1;
  String? properties2;
  List<BpAddress>? bpAddresses;
  List<ContactEmployee>? contactEmployees;

  BusinessPartnerMainModel({
    this.odata,
    this.cardCode,
    this.cardName,
    this.cardType,
    this.properties1,
    this.properties2,
    this.bpAddresses,
    this.contactEmployees,
  });

  @override
  String toString() {
    return 'BusinessPartnerMainModel(odata: $odata, cardCode: $cardCode, cardName: $cardName, cardType: $cardType, properties1: $properties1, properties2: $properties2, bpAddresses: $bpAddresses, contactEmployees: $contactEmployees)';
  }

  factory BusinessPartnerMainModel.fromJson(Map<String, dynamic> json) {
    return BusinessPartnerMainModel(
      odata: json['odata.etag'] as String?,
      cardCode: json['CardCode'] as String?,
      cardName: json['CardName'] as String?,
      cardType: json['CardType'] as String?,
      properties1: json['Properties1'] as String?,
      properties2: json['Properties2'] as String?,
      bpAddresses: (json['BPAddresses'] as List<dynamic>?)
          ?.map((e) => BpAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactEmployees: (json['ContactEmployees'] as List<dynamic>?)
          ?.map((e) => ContactEmployee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'odata': odata,
        'CardCode': cardCode,
        'CardName': cardName,
        'CardType': cardType,
        'Properties1': properties1,
        'Properties2': properties2,
        'BPAddresses': bpAddresses?.map((e) => e.toJson()).toList(),
        'ContactEmployees': contactEmployees?.map((e) => e.toJson()).toList(),
      };
}
