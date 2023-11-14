part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

final class HomeInitialEvent extends HomeEvent {}

final class HomeAddButtonClickedEvent extends HomeEvent {}

final class HomeRemoveButtonClickedEvent extends HomeEvent {}
