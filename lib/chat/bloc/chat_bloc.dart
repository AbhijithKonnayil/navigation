import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc():super(ChatinitialState()){
    on<ChatEvent>(_handleDefaultEvent);
  }

 void _handleDefaultEvent(ChatEvent event, Emitter<ChatState> emitter) {}
}
