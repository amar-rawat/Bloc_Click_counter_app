import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>((event, emit) {
      emit(HomeInitialState());
    });

    on<HomeAddButtonClickedEvent>((event, emit) {
      emit(HomeAddButtonClickedState());
    });

    on<HomeRemoveButtonClickedEvent>((event, emit) {
      emit(HomeRemoveButtonClickedState());
    });
  }
}
