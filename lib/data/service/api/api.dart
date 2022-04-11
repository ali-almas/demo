import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

import '../../endpoint/base/endpoint.dart';
import '../../endpoint/base/upload_endpoint.dart';
import '../../exception/error.dart';
import '../../model/base/response_model.dart';
import '../preferences/preference.dart';
import 'logging.dart';

class ApiService {
  final _dio = Dio();

  ApiService() {
    _dio.options
      ..baseUrl = ""
      ..contentType = 'application/Json'
      ..headers = {};
    _dio.interceptors.add(Logging());
  }

  Future<dynamic> task<T>(Endpoint endpoint) async {
    // if (await _hasInternetConnection()) {
    if (endpoint.httpMethod == HttpMethod.GET) {
      return await _get<T>(endpoint);
    } else if (endpoint.httpMethod == HttpMethod.POST) {
      return await _post<T>(endpoint);
    } else if (endpoint.httpMethod == HttpMethod.PUT) {
      return await _put<T>(endpoint);
    } else if (endpoint.httpMethod == HttpMethod.DELETE) {
      return await _delete<T>(endpoint);
    }
    // }
    else {
      throw HttpException(Error(message: "Please, check internet connection"));
    }
  }

  Future<dynamic> upload<T>(UploadEndpoint endpoint) async {
    if (await _hasInternetConnection()) {
      final formData = await endpoint.data();
      final options = Options(headers: await _header());

      try {
        final response = await _dio.post(
          endpoint.route,
          data: formData,
          queryParameters: endpoint.queryParameters,
          options: options,
        );

        return await _handle<T>(response);
      } on DioError catch (e) {
        throw HttpException(Error(message: e.message, code: e.response?.statusCode));
      }
    } else {
      throw HttpException(Error(message: "Please, check internet connection"));
    }
  }

  Future<dynamic> _post<T>(Endpoint endpoint) async {
    final options = Options(headers: await _header());

    try {
      final response = await _dio.post(
        endpoint.route,
        data: endpoint.body,
        queryParameters: endpoint.queryParameters,
        options: options,
      );

      return await _handle<T>(response);
    } on DioError catch (e) {
      throw HttpException(Error(message: e.message, code: e.response?.statusCode));
    }
  }

  Future<dynamic> _put<T>(Endpoint endpoint) async {
    final options = Options(headers: await _header());

    try {
      final response = await _dio.put(
        endpoint.route,
        data: endpoint.body,
        queryParameters: endpoint.queryParameters,
        options: options,
      );

      return await _handle<T>(response);
    } on DioError catch (e) {
      throw HttpException(Error(message: e.message, code: e.response?.statusCode));
    }
  }

  Future<dynamic> _get<T>(Endpoint endpoint) async {
    final options = Options(headers: await _header());

    try {
      final response = await _dio.get(
        endpoint.route,
        queryParameters: endpoint.queryParameters,
        options: options,
      );

      return await _handle<T>(response);
    } on DioError catch (e) {
      throw HttpException(Error(message: e.message, code: e.response?.statusCode));
    }
  }

  Future<dynamic> _delete<T>(Endpoint endpoint) async {
    final options = Options(headers: await _header());

    try {
      final response = await _dio.delete(
        endpoint.route,
        data: endpoint.body,
        queryParameters: endpoint.queryParameters,
        options: options,
      );

      return await _handle<T>(response);
    } on DioError catch (e) {
      throw HttpException(Error(message: e.message, code: e.response?.statusCode));
    }
  }

  Future<bool> _hasInternetConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  Future<Map<String, dynamic>> _header() async {
    final prefs = await PreferencesService.instance;
    final Map<String, dynamic> headers = {"accept": "*/*"};

    if (prefs.accessToken != null) {
      headers["Authorization"] = prefs.accessToken;
    }

    return headers;
  }

  Future<dynamic> _handle<T>(Response response) async {
    if ([200, 201, 203, 204].contains(response.statusCode)) {
      final request = ResponseModel<T>.fromJson(response.data);

      if (request.isSuccessful && request.hasData) {
        return request.response;
      } else if (request.isSuccessful && !request.hasData) {
        return request.message;
      } else {
        throw HttpException(Error(message: request.message, code: request.code));
      }
    } else {
      throw HttpException(Error(message: response.statusMessage ?? "Unknown error happened", code: response.statusCode));
    }
  }
}
