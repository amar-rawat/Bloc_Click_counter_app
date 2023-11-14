part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeAddButtonClickedState extends HomeActionState {}

final class HomeRemoveButtonClickedState extends HomeActionState {}
