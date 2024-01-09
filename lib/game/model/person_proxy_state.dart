// person_proxy_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_proxy_state.freezed.dart';

@freezed
class PersonProxyState with _$PersonProxyState {
  const factory PersonProxyState.initial() = _Initial;
  const factory PersonProxyState.loading() = _Loading;
  // const factory PersonProxyState.loaded(Person person) = _Loaded;
  const factory PersonProxyState.error(String message) = _Error;
}
