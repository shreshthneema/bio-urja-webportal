class BpAddress {
  String? addressName;
  String? street;
  String? block;
  String? zipCode;
  String? city;
  // dynamic county;
  String? country;
  String? state;
  // dynamic federalTaxId;
  // dynamic taxCode;
  // dynamic buildingFloorRoom;
  String? addressType;
  // dynamic addressName2;
  // dynamic addressName3;
  // dynamic typeOfAddress;
  // dynamic streetNo;
  String? bpCode;
  int? rowNum;
  // dynamic globalLocationNumber;
  // dynamic nationality;
  // dynamic taxOffice;
  String? gstin;
  String? gstType;
  String? createDate;
  String? createTime;
  // dynamic myfType;
  // String? taasEnabled;

  BpAddress({
    this.addressName,
    this.street,
    this.block,
    this.zipCode,
    this.city,
    // this.county,
    this.country,
    this.state,
    // this.federalTaxId,
    // this.taxCode,
    // this.buildingFloorRoom,
    this.addressType,
    // this.addressName2,
    // this.addressName3,
    // this.typeOfAddress,
    // this.streetNo,
    this.bpCode,
    this.rowNum,
    // this.globalLocationNumber,
    // this.nationality,
    // this.taxOffice,
    this.gstin,
    this.gstType,
    this.createDate,
    this.createTime,
    // this.myfType,
    // this.taasEnabled,
  });

  @override
  String toString() {
    return 'BpAddress(addressName: $addressName, street: $street, block: $block, zipCode: $zipCode, city: $city, county: county, country: $country, state: $state, federalTaxId: federalTaxId, taxCode: taxCode, buildingFloorRoom: buildingFloorRoom, addressType: $addressType, addressName2: addressName2, addressName3: addressName3, typeOfAddress: typeOfAddress, streetNo: streetNo, bpCode: $bpCode, rowNum: $rowNum, globalLocationNumber: globalLocationNumber, nationality: nationality, taxOffice: taxOffice, gstin: $gstin, gstType: $gstType, createDate: $createDate, createTime: $createTime, myfType: myfType, taasEnabled: taasEnabled)';
  }

  factory BpAddress.fromJson(Map<String, dynamic> json) => BpAddress(
        addressName: json['AddressName'] as String?,
        street: json['Street'] as String?,
        block: json['Block'] as String?,
        zipCode: json['ZipCode'] as String?,
        city: json['City'] as String?,
        // county: json['County'] as dynamic,
        country: json['Country'] as String?,
        state: json['State'] as String?,
        // federalTaxId: json['FederalTaxID'] as dynamic,
        // taxCode: json['TaxCode'] as dynamic,
        // buildingFloorRoom: json['BuildingFloorRoom'] as dynamic,
        addressType: json['AddressType'] as String?,
        // addressName2: json['AddressName2'] as dynamic,
        // addressName3: json['AddressName3'] as dynamic,
        // typeOfAddress: json['TypeOfAddress'] as dynamic,
        // streetNo: json['StreetNo'] as dynamic,
        bpCode: json['BPCode'] as String?,
        rowNum: json['RowNum'] as int?,
        // globalLocationNumber: json['GlobalLocationNumber'] as dynamic,
        // nationality: json['Nationality'] as dynamic,
        // taxOffice: json['TaxOffice'] as dynamic,
        gstin: json['GSTIN'] as String?,
        gstType: json['GstType'] as String?,
        createDate: json['CreateDate'] as String?,
        createTime: json['CreateTime'] as String?,
        // myfType: json['MYFType'] as dynamic,
        // taasEnabled: json['TaasEnabled'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'AddressName': addressName,
        'Street': street,
        'Block': block,
        'ZipCode': zipCode,
        'City': city,
        // 'County': county,
        'Country': country,
        'State': state,
        // 'FederalTaxID': federalTaxId,
        // 'TaxCode': taxCode,
        // 'BuildingFloorRoom': buildingFloorRoom,
        'AddressType': addressType,
        // 'AddressName2': addressName2,
        // 'AddressName3': addressName3,
        // 'TypeOfAddress': typeOfAddress,
        // 'StreetNo': streetNo,
        'BPCode': bpCode,
        'RowNum': rowNum,
        // 'GlobalLocationNumber': globalLocationNumber,
        // 'Nationality': nationality,
        // 'TaxOffice': taxOffice,
        'GSTIN': gstin,
        'GstType': gstType,
        'CreateDate': createDate,
        'CreateTime': createTime,
        // 'MYFType': myfType,
        // 'TaasEnabled': taasEnabled,
      };
}
