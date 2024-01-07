import 'package:vg_tarabish_flame/game/data/proxy_person_datasource.dart';
import 'package:vg_tarabish_flame/game/model/person_proxy.dart';

class PersonProxyRepository {
  final PersonProxyDataSource dataSource;

  PersonProxyRepository(this.dataSource);

  Future<List<PersonProxy>> getAllPersonProxies() {
    return dataSource.getAllPersonProxies();
  }

  Future<void> createOrUpdatePersonProxy(PersonProxy personProxy) {
    return dataSource.createOrUpdatePersonProxy(personProxy);
  }

  // Other methods for managing person proxies
}
