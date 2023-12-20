import '../../../utils/index.dart';

class ResponseModel<T> {
  const ResponseModel({
    required this.headers,
    required this.body,
  });

  factory ResponseModel.fromJson(JSON json) {
    return ResponseModel(
      headers: ResponseHeadersModel.fromJson(
        json,
      ),
      body: json['value'] as T,
    );
  }

  final ResponseHeadersModel? headers;
  final T body;
}

class ResponseHeadersModel {
  ResponseHeadersModel({
    this.error,
    this.message,
    this.code,
  });

  factory ResponseHeadersModel.fromJson(JSON json) {
    return ResponseHeadersModel(
      error: json['error'],
      message: json['message'] as String?,
      code: json['code'] as int?,
    );
  }
  bool? error;
  String? message;
  int? code;
}
