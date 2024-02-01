import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tech_fit/features/back/models/back_exercise_data_model.dart';

import '../../../data/back_exercise_data.dart';

part 'back_event.dart';
part 'back_state.dart';

class BackBloc extends Bloc<BackEvent, BackState> {
  BackBloc() : super(BackInitial()) {
    on<BackInitialEvent>(backInitialEvent);
    on<Back1ClickedEvent>(back1ClickedEvent);
    on<Back2ClickedEvent>(back2ClickedEvent);
    on<Back3ClickedEvent>(back3ClickedEvent);
    on<Back4ClickedEvent>(back4ClickedEvent);
    on<Back5ClickedEvent>(back5ClickedEvent);

  }

  FutureOr<void> backInitialEvent(BackInitialEvent event, Emitter<BackState> emit) {
    emit(BackLoadingState());
    emit(BackLoadedSuccessState(backExercise: BackExercise.backExercise.map((e) => BackExerciseDataModel(
        id: e['id'],
        name: e['name'],
        imageUrl: e['imageUrl']
    )).toList()));
  }

  FutureOr<void> back1ClickedEvent(Back1ClickedEvent event, Emitter<BackState> emit) {

  }

  FutureOr<void> back2ClickedEvent(Back2ClickedEvent event, Emitter<BackState> emit) {

  }

  FutureOr<void> back3ClickedEvent(Back3ClickedEvent event, Emitter<BackState> emit) {

  }

  FutureOr<void> back4ClickedEvent(Back4ClickedEvent event, Emitter<BackState> emit) {

  }

  FutureOr<void> back5ClickedEvent(Back5ClickedEvent event, Emitter<BackState> emit) {

  }
}
