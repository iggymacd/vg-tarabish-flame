// person_proxy_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_proxy_event.freezed.dart';

@freezed
class PersonProxyEvent with _$PersonProxyEvent {
  const factory PersonProxyEvent.load() = _Load;
  // const factory PersonProxyEvent.update(Person person) = _Update;
}
