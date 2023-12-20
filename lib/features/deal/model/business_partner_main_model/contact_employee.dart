class ContactEmployee {
  String? cardCode;
  String? name;
  dynamic position;
  // dynamic address;
  // dynamic phone1;
  // dynamic phone2;
  dynamic mobilePhone;
  // dynamic fax;
  // dynamic eMail;
  // dynamic pager;
  // dynamic remarks1;
  // dynamic remarks2;
  dynamic password;
  int? internalCode;
  String? placeOfBirth;
  dynamic dateOfBirth;
  String? gender;
  dynamic profession;
  dynamic title;
  dynamic cityOfBirth;
  String? active;
  String? firstName;
  String? middleName;
  String? lastName;
  // dynamic emailGroupCode;
  String? blockSendingMarketingContent;
  String? createDate;
  String? createTime;
  String? updateDate;
  String? updateTime;
  // dynamic connectedAddressName;
  // dynamic connectedAddressType;
  // dynamic foreignCountry;
  List<dynamic>? contactEmployeeBlockSendingMarketingContents;

  ContactEmployee({
    this.cardCode,
    this.name,
    this.position,
    // this.address,
    // this.phone1,
    // this.phone2,
    this.mobilePhone,
    // this.fax,
    // this.eMail,
    // this.pager,
    // this.remarks1,
    // this.remarks2,
    this.password,
    this.internalCode,
    this.placeOfBirth,
    this.dateOfBirth,
    this.gender,
    this.profession,
    this.title,
    this.cityOfBirth,
    this.active,
    this.firstName,
    this.middleName,
    this.lastName,
    // this.emailGroupCode,
    this.blockSendingMarketingContent,
    this.createDate,
    this.createTime,
    this.updateDate,
    this.updateTime,
    // this.connectedAddressName,
    // this.connectedAddressType,
    // this.foreignCountry,
    this.contactEmployeeBlockSendingMarketingContents,
  });

  @override
  String toString() {
    return 'ContactEmployee(cardCode: $cardCode, name: $name, position: $position, address: address, phone1: phone1, phone2: phone2, mobilePhone: $mobilePhone, fax: fax, eMail: eMail, pager: pager, remarks1: remarks1, remarks2: remarks2, password: $password, internalCode: $internalCode, placeOfBirth: $placeOfBirth, dateOfBirth: $dateOfBirth, gender: $gender, profession: $profession, title: $title, cityOfBirth: $cityOfBirth, active: $active, firstName: $firstName, middleName: $middleName, lastName: $lastName, emailGroupCode: emailGroupCode, blockSendingMarketingContent: $blockSendingMarketingContent, createDate: $createDate, createTime: $createTime, updateDate: $updateDate, updateTime: $updateTime, connectedAddressName: connectedAddressName, connectedAddressType: connectedAddressType, foreignCountry: foreignCountry, contactEmployeeBlockSendingMarketingContents: $contactEmployeeBlockSendingMarketingContents)';
  }

  factory ContactEmployee.fromJson(Map<String, dynamic> json) {
    return ContactEmployee(
      cardCode: json['CardCode'] as String?,
      name: json['Name'] as String?,
      position: json['Position'] as dynamic,
      // address: json['Address'] as dynamic,
      // phone1: json['Phone1'] as dynamic,
      // phone2: json['Phone2'] as dynamic,
      mobilePhone: json['MobilePhone'] as dynamic,
      // fax: json['Fax'] as dynamic,
      // eMail: json['E_Mail'] as dynamic,
      // pager: json['Pager'] as dynamic,
      // remarks1: json['Remarks1'] as dynamic,
      // remarks2: json['Remarks2'] as dynamic,
      password: json['Password'] as dynamic,
      internalCode: json['InternalCode'] as int?,
      placeOfBirth: json['PlaceOfBirth'] as String?,
      dateOfBirth: json['DateOfBirth'] as dynamic,
      gender: json['Gender'] as String?,
      profession: json['Profession'] as dynamic,
      title: json['Title'] as dynamic,
      cityOfBirth: json['CityOfBirth'] as dynamic,
      active: json['Active'] as String?,
      firstName: json['FirstName'] as String?,
      middleName: json['MiddleName'] as String?,
      lastName: json['LastName'] as String?,
      // emailGroupCode: json['EmailGroupCode'] as dynamic,
      blockSendingMarketingContent:
          json['BlockSendingMarketingContent'] as String?,
      createDate: json['CreateDate'] as String?,
      createTime: json['CreateTime'] as String?,
      updateDate: json['UpdateDate'] as String?,
      updateTime: json['UpdateTime'] as String?,
      // connectedAddressName: json['ConnectedAddressName'] as dynamic,
      // connectedAddressType: json['ConnectedAddressType'] as dynamic,
      // foreignCountry: json['ForeignCountry'] as dynamic,
      contactEmployeeBlockSendingMarketingContents:
          json['ContactEmployeeBlockSendingMarketingContents']
              as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'CardCode': cardCode,
        'Name': name,
        'Position': position,
        // 'Address': address,
        // 'Phone1': phone1,
        // 'Phone2': phone2,
        'MobilePhone': mobilePhone,
        // 'Fax': fax,
        // 'E_Mail': eMail,
        // 'Pager': pager,
        // 'Remarks1': remarks1,
        // 'Remarks2': remarks2,
        'Password': password,
        'InternalCode': internalCode,
        'PlaceOfBirth': placeOfBirth,
        'DateOfBirth': dateOfBirth,
        'Gender': gender,
        'Profession': profession,
        'Title': title,
        'CityOfBirth': cityOfBirth,
        'Active': active,
        'FirstName': firstName,
        'MiddleName': middleName,
        'LastName': lastName,
        // 'EmailGroupCode': emailGroupCode,
        'BlockSendingMarketingContent': blockSendingMarketingContent,
        'CreateDate': createDate,
        'CreateTime': createTime,
        'UpdateDate': updateDate,
        'UpdateTime': updateTime,
        // 'ConnectedAddressName': connectedAddressName,
        // 'ConnectedAddressType': connectedAddressType,
        // 'ForeignCountry': foreignCountry,
        'ContactEmployeeBlockSendingMarketingContents':
            contactEmployeeBlockSendingMarketingContents,
      };
}
