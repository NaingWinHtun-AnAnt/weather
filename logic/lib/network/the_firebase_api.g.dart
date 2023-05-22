// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'the_firebase_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _TheFirebaseApi implements TheFirebaseApi {
  _TheFirebaseApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://fcm.googleapis.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SendNotificationResponse> sendNotification(
      SendNotificationRequest notificationRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(notificationRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SendNotificationResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'fcm/send',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SendNotificationResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
