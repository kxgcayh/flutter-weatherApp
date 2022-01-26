import 'package:dio/dio.dart';
import 'package:weather/app/data/others/helpers.dart';

abstract class RequestService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: 'https://api.openweathermap.org/data/2.5/onecall'),
  );
  late Response response;

  Future<Response> getConnect(
    String url, {
    CancelToken? cancelToken,
  }) async {
    try {
      response = await _dio.get(
        _dio.options.baseUrl + url + '&appid=${SERVICE.KEY}',
        cancelToken: cancelToken,
      );
      return response;
    } on DioError catch (e) {
      return _errorCatcher(e);
    }
  }

  Future<Response<dynamic>> _errorCatcher(DioError e) {
    logger.e('dioError:$e');
    if (e.type == DioErrorType.response) {
      int? statusCode = e.response?.statusCode;
      if (statusCode == STATUS.NOT_FOUND) {
        throw MESSAGE.NOT_FOUND;
      } else if (statusCode == STATUS.INTERNAL_ERROR) {
        throw MESSAGE.INTERNAL_ERROR;
      } else {
        throw '${e.error.message}';
      }
    } else if (e.type == DioErrorType.connectTimeout) {
      throw MESSAGE.CONNECTION_TIMEOUT;
    } else if (e.type == DioErrorType.cancel) {
      throw 'cancel';
    }
    throw MESSAGE.DEFAULT;
  }
}
