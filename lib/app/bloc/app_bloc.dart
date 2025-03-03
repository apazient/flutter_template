
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitialState()) {
    on<AppInitialEvent>((_onInitial));
    on<AppLoadEvent>((_onLoad));
  }

  void _onInitial(AppInitialEvent event, Emitter<AppState> emit) {
    emit(AppLoadingState());
  }

  void _onLoad(AppLoadEvent event, Emitter<AppState> emit) {
    emit(AppLoadingState());
  }
}
