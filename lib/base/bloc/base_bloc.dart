import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'base_event.dart';
part 'base_state.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc():super(BaseinitialState()){
    on<BaseEvent>(_handleDefaultEvent);
  }

 void _handleDefaultEvent(BaseEvent event, Emitter<BaseState> emitter) {}
}
