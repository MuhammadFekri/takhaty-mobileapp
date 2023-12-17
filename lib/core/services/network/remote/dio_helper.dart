import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../constants/constants.dart';
import '../../../resources/strings_manager.dart';
import '../local/cache_helper.dart';

class DioHelper {
  static DioHelper? _instance;

  factory DioHelper() => _instance ??= DioHelper._internal();

  late final Dio dio;

  DioHelper._internal() {
    init();
  }

  init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        validateStatus: (status) => true,
        //TODO: only in dev
        // validateStatus: (status) => status! < 500,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
  }

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
    String? forceLang,
  }) async {
    String? userToken = CacheHelper().getData(key: CacheHelper.tokenKey);
    Map<String, dynamic> headerMap = {};
    if (userToken != null) {
      headerMap['Authorization'] = 'Bearer $userToken';
    }
    headerMap['Content-Type'] = 'application/json';
    headerMap['Accept'] = 'application/json';

    dio.options.headers = headerMap;

    try {
      Response response = await dio.get(
        endPoint,
        queryParameters: query,
      );
      if (response.statusCode != 401) {
        return response;
      } else {
        // 401 UnAuthorized
        if (CacheHelper().getData(key: CacheHelper.tokenKey) != null) {
          CacheHelper().removeData(key: CacheHelper.tokenKey);
        }
        throw StringsManager.unAuthorized.tr();
      }
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionTimeout) {
        throw StringsManager.timeOut.tr();
      } else if (ex.type == DioExceptionType.receiveTimeout) {
        throw StringsManager.timeOut.tr();
      } else if (ex.type == DioExceptionType.unknown) {
        throw StringsManager.unknown.tr();
      } else {
        throw StringsManager.checkInternet.tr();
      }
    }
  }

  Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? query,
    dynamic data,
    bool isRow = true,
    bool isPut = false,
    bool isPatch = false,
  }) async {
    dio.options.followRedirects = true;

    String? userToken = CacheHelper().getData(key: CacheHelper.tokenKey);
    Map<String, dynamic> headerMap = {};
    if (userToken != null) {
      headerMap['Authorization'] = 'Bearer $userToken';
    }
    headerMap['Content-Type'] = 'application/json';
    headerMap['Accept'] = 'application/json';

    dio.options.headers = headerMap;
    try {
      if (isPut) {
        return await dio.put(
          endPoint,
          queryParameters: query,
          data: isRow ? data : FormData.fromMap(data),
        );
      } else if (isPatch) {
        return await dio.patch(
          endPoint,
          queryParameters: query,
          data: isRow ? data : FormData.fromMap(data),
        );
      } else {
        return await dio.post(
          endPoint,
          queryParameters: query,
          data: isRow ? data : FormData.fromMap(data),
        );
      }
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionTimeout) {
        throw StringsManager.timeOut.tr();
      } else if (ex.type == DioExceptionType.receiveTimeout) {
        throw StringsManager.timeOut.tr();
      } else if (ex.type == DioExceptionType.unknown) {
        throw StringsManager.unknown.tr();
      } else {
        log('exType: ${ex.type}');
        throw StringsManager.checkInternet.tr();
      }
    }
  }

  Future<Response> deleteData({
    required String endPoint,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
  }) async {
    String? userToken = CacheHelper().getData(key: CacheHelper.tokenKey);
    Map<String, dynamic> headerMap = {};
    if (userToken != null) {
      headerMap['Authorization'] = 'Bearer $userToken';
    }

    headerMap['Content-Type'] = 'application/json';
    headerMap['Accept'] = 'application/json';

    dio.options.headers = headerMap;
    return await dio.delete(
      endPoint,
      queryParameters: query,
      data: data,
    );
  }
}
