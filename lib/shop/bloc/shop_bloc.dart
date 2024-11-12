import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc():super(ShopinitialState()){
    on<ShopEvent>(_handleDefaultEvent);
  }

 void _handleDefaultEvent(ShopEvent event, Emitter<ShopState> emitter) {}
}
