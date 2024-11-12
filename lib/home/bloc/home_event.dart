part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomedefaultEvent extends HomeEvent {}

class HomeDataLoadEvent extends HomeEvent {}

sealed class DataEvent {}

class DataLoadEvent extends DataEvent {}
