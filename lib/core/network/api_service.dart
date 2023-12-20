import 'api_interface.dart';
import 'dio_manager.dart';
import 'error_handling.dart';
import 'response_model.dart';
import '../../../utils/index.dart';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiService implements ApiInterface {
  late final DioService _dioService;

  factory ApiService() {
    _instance._dioService = DioService(
      dioClient: Dio(
        BaseOptions(
          baseUrl: 'https://' + Config.baseurl,
          contentType: 'application/json',
          responseType: ResponseType.json,
        ),
      ),
    );
    return _instance;
  }

  ApiService._internal();

  static final ApiService _instance = ApiService._internal();

  // ApiService() : _dioService = DioService(dioClient: Dio());

  @override
  Future<List<T>> getCollectionData<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
    JSON? queryParams,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
    JSON? headers,
  }) async {
    List<Object?> body;

    try {
      // Entire map of response
      final data = await _dioService.get<List<Object?>>(
        endpoint: endpoint,
        options: Options(
          headers: headers,
          extra: <String, Object?>{
            'requiresAuthToken': requiresAuthToken,
          },
        ),
        queryParams: queryParams,
        cancelToken: cancelToken,
      );

      // Items of table as json
      body = data.body;
    } on Exception catch (ex) {
      debugPrint([ex, 'Exception from api'].toString());
      throw CustomException.fromDioException(ex);
    }

    try {
      // Returning the deserialized objects
      return body.map((dataMap) => converter(dataMap! as JSON)).toList();
    } on Exception catch (ex) {
      debugPrint([ex, 'Exception from converter'].toString());
      throw CustomException.fromParsingException(ex);
    }
  }

  @override
  Future<T> getDocumentData<T>({
    required String endpoint,
    required T Function(JSON response) converter,
    JSON? queryParams,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
  }) async {
    JSON body;
    try {
      // Entire map of response
      final data = await _dioService.get<JSON>(
        endpoint: endpoint,
        queryParams: queryParams,
        options: Options(
          extra: <String, Object?>{
            'requiresAuthToken': requiresAuthToken,
          },
        ),
        cancelToken: cancelToken,
      );

      body = data.body;
    } on Exception catch (ex) {
      debugPrint([ex, 'Exception from api'].toString());
      throw CustomException.fromDioException(ex);
    }

    try {
      // Returning the deserialized object
      return converter(body);
    } on Exception catch (ex) {
      debugPrint([ex, 'Exception from converter'].toString());

      throw CustomException.fromParsingException(ex);
    }
  }

  @override
  Future<T> setData<T>({
    required String endpoint,
    required JSON data,
    required T Function(ResponseModel<JSON> response) converter,
    CancelToken? cancelToken,
    bool requiresAuthToken = true,
  }) async {
    ResponseModel<JSON> response;
    try {
      // Entire map of response
      response = await _dioService.post<JSON>(
        endpoint: endpoint,
        data: data,
        options: Options(
          extra: <String, Object?>{
            'requiresAuthToken': requiresAuthToken,
          },
        ),
        cancelToken: cancelToken,
      );
    } on Exception catch (ex) {
      debugPrint([ex, 'Exception from api'].toString());

      throw CustomException.fromDioException(ex);
    }

    try {
      // Returning the serialized object
      return converter(response);
    } on Exception catch (ex) {
      debugPrint([ex, 'Exception from converter'].toString());

      throw CustomException.fromParsingException(ex);
    }
  }

  @override
  void cancelRequests({CancelToken? cancelToken}) {
    _dioService.cancelRequests(cancelToken: cancelToken);
  }
}
