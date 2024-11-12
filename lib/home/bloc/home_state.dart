part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeinitialState extends HomeState {}

class HomeloadingState extends HomeState implements Loading {}

class HomesuccessState extends HomeState implements Success<List<Product>> {
  List<Product> data;
  HomesuccessState(this.data);
}

class HomefailedState extends HomeState {
  String error;
  HomefailedState(this.error);
}

abstract interface class Initial {}

abstract interface class Loading {}

abstract interface class Success<T> {
  late T data;
}

abstract interface class Fail {}
