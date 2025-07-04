import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<SplashScreenEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 2));
      emit(NavigationFromSplashToOnboardState());
    });
  }
}
