import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'offer_event.dart';
part 'offer_state.dart';

class OfferBloc extends Bloc<OfferEvent, OfferState> {
  OfferBloc():super(OfferinitialState()){
    on<OfferEvent>(_handleDefaultEvent);
  }

 void _handleDefaultEvent(OfferEvent event, Emitter<OfferState> emitter) {}
}
