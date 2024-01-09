import 'package:vg_tarabish_flame/game/data/person_proxy_datasource.dart';
import 'package:vg_tarabish_flame/game/model/person_proxy.dart';

/// Basic implementation of a remote person proxy datasource.
///
/// Author: Allan MacDonald
/// github.com/iggymacd
///
class RemotePersonProxyDataSource implements PersonProxyDataSource {
  @override
  Future<List<PersonProxyBloc>> getAllPersonProxies() {
    // TODO: implement getAllPersonProxies
    throw UnimplementedError();
  }

  @override
  Future<void> createOrUpdatePersonProxy(PersonProxyBloc personProxy) {
    // TODO: implement createOrUpdatePersonProxy
    throw UnimplementedError();
  }

  @override
  PersonProxyBloc getPersonProxy(String gameId, int playerPosition) {
    // TODO: implement getPersonProxy
    throw UnimplementedError();
  }
}
