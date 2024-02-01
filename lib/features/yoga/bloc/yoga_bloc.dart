import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tech_fit/data/yoga_exercise_data.dart';
import 'package:tech_fit/features/yoga/models/yoga_exercise_data_model.dart';

part 'yoga_event.dart';
part 'yoga_state.dart';

class YogaBloc extends Bloc<YogaEvent, YogaState> {
  YogaBloc() : super(YogaInitial()) {
    on<YogaInitialEvent>(yogaInitialEvent);
    on<Yoga1ClickedEvent>(yoga1ClickedEvent);
    on<Yoga2ClickedEvent>(yoga2ClickedEvent);
    on<Yoga3ClickedEvent>(yoga3ClickedEvent);
    on<Yoga4ClickedEvent>(yoga4ClickedEvent);
    on<Yoga5ClickedEvent>(yoga5ClickedEvent);

  }

  FutureOr<void> yogaInitialEvent(YogaInitialEvent event, Emitter<YogaState> emit) {
    emit(YogaLoadingState());
    emit(YogaLoadedSuccessState(yogaExercise: YogaExercise.yogaExercise.map((e) => YogaExerciseDataModel(
        id: e['id'],
        name: e['name'],
        imageUrl: e['imageUrl']
    )).toList()));
  }

  FutureOr<void> yoga1ClickedEvent(Yoga1ClickedEvent event, Emitter<YogaState> emit) {

  }

  FutureOr<void> yoga2ClickedEvent(Yoga2ClickedEvent event, Emitter<YogaState> emit) {

  }

  FutureOr<void> yoga3ClickedEvent(Yoga3ClickedEvent event, Emitter<YogaState> emit) {

  }

  FutureOr<void> yoga4ClickedEvent(Yoga4ClickedEvent event, Emitter<YogaState> emit) {

  }

  FutureOr<void> yoga5ClickedEvent(Yoga5ClickedEvent event, Emitter<YogaState> emit) {

  }
}
