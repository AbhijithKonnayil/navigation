import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/models/products.dart';
import 'package:navigation/repo/product_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeinitialState()) {
    on<HomedefaultEvent>(_handleDefaultEvent);
    on<HomeDataLoadEvent>(_handleDefaultEvent);
    this.add(HomeDataLoadEvent());
  }

  Future<void> _handleDefaultEvent(
      HomeEvent event, Emitter<HomeState> emitter) async {
    try {
      emit(HomeloadingState());
      await Future.delayed(Duration(seconds: 2));
      final products = await ProductRepository().fetchAllProducts();
      int p = await compute(loop, 100000);
      print("state Bloc");
      emit(HomesuccessState(products));
    } catch (e) {
      emit(HomefailedState('Failed to fetch products'));
    }
  }
}

Future<int> loop(int x) async {
  var sum = 0;
  for (int i = 0; i <= x; i++) {
    print(i);
    sum += i;
  }
  return sum;
}
