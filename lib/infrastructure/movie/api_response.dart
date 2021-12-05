import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();
  const factory ApiResponse.noConnection() = _NoConnection<T>;
  const factory ApiResponse.notModified() = _NotModified<T>;
  const factory ApiResponse.withNewData(T data) = _WithNewData<T>;
}
