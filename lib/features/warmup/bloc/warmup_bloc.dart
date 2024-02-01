import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tech_fit/features/warmup/models/warmup_exercise_data_model.dart';

import '../../../data/warmup_exercise_data.dart';

part 'warmup_event.dart';
part 'warmup_state.dart';

class WarmupBloc extends Bloc<WarmupEvent, WarmupState> {
  WarmupBloc() : super(WarmupInitial()) {
    on<WarmupInitialEvent>(warmupInitialEvent);
    on<Warmup1ClickedEvent>(warmup1ClickedEvent);
    on<Warmup2ClickedEvent>(warmup2ClickedEvent);
    on<Warmup3ClickedEvent>(warmup3ClickedEvent);
    on<Warmup4ClickedEvent>(warmup4ClickedEvent);
    on<Warmup5ClickedEvent>(warmup5ClickedEvent);

  }

  FutureOr<void> warmupInitialEvent(WarmupInitialEvent event, Emitter<WarmupState> emit) {
    emit(WarmupLoadingState());
    emit(WarmupLoadedSuccessState(warmupExercise: WarmupExercise.warmupExercise.map((e) => WarmupExerciseDataModel(
        id: e['id'],
        name: e['name'],
        imageUrl: e['imageUrl']
    )).toList()));
  }

  FutureOr<void> warmup1ClickedEvent(Warmup1ClickedEvent event, Emitter<WarmupState> emit) {

  }

  FutureOr<void> warmup2ClickedEvent(Warmup2ClickedEvent event, Emitter<WarmupState> emit) {

  }

  FutureOr<void> warmup3ClickedEvent(Warmup3ClickedEvent event, Emitter<WarmupState> emit) {

  }

  FutureOr<void> warmup4ClickedEvent(Warmup4ClickedEvent event, Emitter<WarmupState> emit) {

  }

  FutureOr<void> warmup5ClickedEvent(Warmup5ClickedEvent event, Emitter<WarmupState> emit) {

  }
}