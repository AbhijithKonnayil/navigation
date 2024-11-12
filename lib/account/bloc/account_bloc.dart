import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc():super(AccountinitialState()){
    on<AccountEvent>(_handleDefaultEvent);
  }

 void _handleDefaultEvent(AccountEvent event, Emitter<AccountState> emitter) {}
}
