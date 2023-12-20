class LoginResponseModel {
  String? odata;
  String? sessionId;
  String? version;
  int? sessionTimeout;

  LoginResponseModel({
    this.odata,
    this.sessionId,
    this.version,
    this.sessionTimeout,
  });

  @override
  String toString() {
    return 'LoginResponseModel(odata: $odata, sessionId: $sessionId, version: $version, sessionTimeout: $sessionTimeout)';
  }

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      odata: json['odata.metadata'] as String?,
      sessionId: json['SessionId'] as String?,
      version: json['Version'] as String?,
      sessionTimeout: json['SessionTimeout'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'odata': odata,
        'SessionId': sessionId,
        'Version': version,
        'SessionTimeout': sessionTimeout,
      };
}
