import 'package:vg_tarabish_flame/game/data/person_proxy_datasource.dart';
import 'package:vg_tarabish_flame/game/model/person_proxy.dart';

class PersonProxyRepository {
  final PersonProxyDataSource dataSource;

  PersonProxyRepository(this.dataSource);

  Future<List<PersonProxyBloc>> getAllPersonProxies() {
    return dataSource.getAllPersonProxies();
  }

  Future<void> createOrUpdatePersonProxy(PersonProxyBloc personProxy) {
    return dataSource.createOrUpdatePersonProxy(personProxy);
  }

  getPersonProxy(String gameId, int playerPosition) {}

  // Other methods for managing person proxies
}
