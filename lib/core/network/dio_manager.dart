// import 'package:cms_one/core/network/interceptors/api_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'interceptors/api_interceptors.dart';
import 'response_model.dart';
import '../../../utils/index.dart';

class DioService {
  final Dio _dio;
  final CancelToken _cancelToken;
  final ApiInterceptor interceptor = ApiInterceptor();

  DioService({
    required Dio dioClient,
    // HttpClientAdapter? httpClientAdapter,
  })  : _dio = dioClient,
        _cancelToken = CancelToken() {
    // adapter.withCredentials = true;
    // _dio.httpClientAdapter = adapter;
    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: interceptor.onRequest,
        onResponse: interceptor.onResponse,
        onError: interceptor.onError,
      ),
    );
  }

  /// This method sends a `GET` request to the [endpoint], **decodes**
  /// the response and returns a parsed [ResponseModel] with a body of type [R].

  /// Any errors encountered during the request are caught and a custom
  ///
  /// [queryParams] holds any query parameters for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [options] are special instructions that can be merged with the request.
  Future<ResponseModel<R>> get<R>({
    required String endpoint,
    JSON? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get(
      endpoint,
      queryParameters: queryParams,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    debugPrint([response.statusCode, 'response from api get'].toString());

    return ResponseModel<R>.fromJson(response.data!);
  }

  Future<ResponseModel<R>> post<R>({
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.post<JSON>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return ResponseModel<R>.fromJson(response.data!);
  }

  void cancelRequests({CancelToken? cancelToken}) {
    if (cancelToken == null) {
      _cancelToken.cancel('Cancelled');
    } else {
      cancelToken.cancel();
    }
  }
}
