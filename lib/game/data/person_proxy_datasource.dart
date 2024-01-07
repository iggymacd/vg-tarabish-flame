// person_proxy_datasource.dart
import 'package:vg_tarabish_flame/game/model/person_proxy.dart';

abstract class PersonProxyDataSource {
  Future<List<PersonProxy>> getAllPersonProxies();
  Future<void> createOrUpdatePersonProxy(PersonProxy personProxy);
  // Other methods for CRUD operations
}
