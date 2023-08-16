import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_model.freezed.dart';

@freezed
class UiModelState<T> with _$UiModelState<T> {
  const factory UiModelState.idle() = UiModelStateIdle<T>;
  const factory UiModelState.loading() = UiModelStateLoading<T>;
  const factory UiModelState.finished(T data) = UiModelStateFinished<T>;
  const factory UiModelState.error(String error) = UiModelStateError<T>;
}
