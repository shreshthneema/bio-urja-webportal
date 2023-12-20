import 'dart:convert';
import 'dart:io';

import '../../../utils/index.dart';
import '../login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor() : super();

  /// This method intercepts an out-going request before it reaches the
  /// destination.

  // ignore: non_constant_identifier_names
  String get TokenExpiredException =>
      'Invalid session or session already timeout.';

  String username1 =
      '{"UserName": "${Config.username}", "CompanyDB": "${Config.companyDB}"}';

  String password1 = Config.password;

  /// [options] contains http request information and configuration.
  /// [handler] is used to forward, resolve, or reject requests.

  /// This method is used to inject any token/API keys in the request.

  /// happen to the intercepted request. It has 3 possible options:
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // if (options.extra.containsKey('requiresAuthToken')) {
    //   if (options.extra['requiresAuthToken'] == true) {
    //     final token = await getIt<AuthCacheManager>().getAccessToken();

    //     options.headers.addAll(
    //       <String, Object?>{'Authorization': 'Bearer $token'},
    //     );
    //   }
    //   options.extra.remove('requiresAuthToken');
    // }
    String basicAuth =
        // ignore: prefer_interpolation_to_compose_strings
        'Basic ' + base64.encode(utf8.encode('$username1:$password1'));

    options.headers.addAll(
      {
        'Authorization': basicAuth,
      },
    );
    debugPrint(['onRequest interceptor: ', options].toString());

    return handler.next(options);
  }

  /// This method intercepts an incoming response before it reaches Dio.

  /// [response] contains http [Response] info.
  /// [handler] is used to forward, resolve, or reject responses.

  /// If response is successful, it is simply passed on. It may again be
  /// intercepted if there are any after it. If none, it is passed to [Dio].
  ///
  /// response and original request's options.

  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted response. It has 3 possible options:

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    debugPrint(['onResponse interceptor: ', response.statusCode].toString());

    if (response.statusCode != null && response.statusCode! ~/ 100 == 2) {
      return handler.next(response);
    }

    //Reject all error codes from server except 402 and 200 OK
    return handler.reject(
      DioException(
        requestOptions: response.requestOptions,
        response: response,
      ),
    );
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    debugPrint(
        ['onError interceptor:', err.error, err.type, err.response].toString());
    if (err.response != null) {
      if (err.response?.statusCode == 401) {
        // ignore: avoid_dynamic_calls
        final exception = err.response!.data['error']['message']['value'];

        if (exception == TokenExpiredException) {
          final requestOptions = err.requestOptions;

          final response = await refreshSession(requestOptions, err.response!);

          if (response != null) {
            final opts = err.response!.requestOptions;

            String username1 =
                '{"UserName": "${Config.username}", "CompanyDB": "${Config.companyDB}"}';

            String password1 = Config.password;
            String basicAuth =
                // ignore: prefer_interpolation_to_compose_strings
                'Basic ' + base64.encode(utf8.encode('$username1:$password1'));

            // opts.headers['access-token'] = token.accessToken;
            opts.headers.addAll(
              {
                'Authorization': basicAuth,
              },
            );

            final originResult = await Dio().fetch(opts..path);

            if (originResult.statusCode != null &&
                originResult.statusCode! ~/ 100 == 2) {
              return handler.resolve(originResult);
            }
          }
        }
      }
    }
    // super.onError(err, handler);
    handler.next(err);
  }

  static Future<LoginResponseModel?> refreshSession(
    RequestOptions requestOptions,
    Response response,
  ) async {
    // Repository repository = Repository();
    final dio = Dio();

    dio.interceptors.clear();

    final apiUrl = Uri.parse('https://' + Config.baseurl + '/Login');

    try {
      final data = {
        'UserName': 'manager',
        'Password': '1234',
        'CompanyDB': 'DEMO_SAUDA1',
      };

      response = await dio.postUri(
        apiUrl,
        data: data,
        options: Options(
          headers: {
            HttpHeaders.acceptHeader: '*/*',
          },
        ),
      );

      debugPrint(
        'login response = $response',
      );

      if (response.statusCode == 200) {
        final refreshTokenResponse =
            LoginResponseModel.fromJson(jsonDecode(response.toString()));

        return refreshTokenResponse;
      }
    } catch (e) {
      debugPrint(['refresh-token: ', e].toString());
      //TODO: logout
    }
    return null;
  }
}
