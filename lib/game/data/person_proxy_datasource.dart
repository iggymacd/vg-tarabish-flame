// person_proxy_datasource.dart
import 'package:vg_tarabish_flame/game/model/person_proxy.dart';

abstract class PersonProxyDataSource {
  Future<List<PersonProxyBloc>> getAllPersonProxies();
  Future<void> createOrUpdatePersonProxy(PersonProxyBloc personProxy);

  PersonProxyBloc getPersonProxy(String gameId, int playerPosition);
  // Other methods for CRUD operations
}
