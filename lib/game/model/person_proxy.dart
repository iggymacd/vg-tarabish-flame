// person_proxy_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vg_tarabish_flame/game/model/person_proxy_event.dart';
import 'package:vg_tarabish_flame/game/model/person_proxy_state.dart';

class PersonProxyBloc extends Bloc<PersonProxyEvent, PersonProxyState> {
  // Define the PersonProxyEvent and PersonProxyState classes

  PersonProxyBloc() : super(PersonProxyState.initial());

  @override
  Stream<PersonProxyState> mapEventToState(PersonProxyEvent event) async* {
    // Handle events and emit corresponding states
  }
}
