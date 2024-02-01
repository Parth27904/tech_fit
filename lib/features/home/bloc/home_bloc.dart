import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tech_fit/data/back_exercise_data.dart';
import 'package:tech_fit/data/exercise_data.dart';
import 'package:tech_fit/features/back/models/back_exercise_data_model.dart';
import 'package:tech_fit/features/home/models/home_exercise_data_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeWarmUpExerciseClickedEvent>(homeWarmUpExerciseClickedEvent);
    on<HomeBackExerciseClickedEvent>(homeBackExerciseClickedEvent);
    on<HomeYogaExerciseClickedEvent>(homeYogaExerciseClickedEvent);
    on<HomeMeditationTabClickedEvent>(homeMeditationTabClickedEvent);
    on<HomeProfileTabClickedEvent>(homeProfileTabClickedEvent);
    on<HomePageTabClickedEvent>(homePageTabClickedEvent);
    
  }

  FutureOr<void> homeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) async{
    emit(HomeLoadingState());
    emit(HomeLoadedSuccessState(exercise: Exercise.exercise.map((e) => ExerciseDataModel(
        id: e['id'],
        name: e['name'],
        description: e['description'],
        imageUrl: e['imageUrl']
    )).toList())
    );
  }

  FutureOr<void> homeBackExerciseClickedEvent(HomeBackExerciseClickedEvent event, Emitter<HomeState> emit) {
    print('Back Exercise Selected');
    emit(HomeNavigateToBackExercisePageActionState());
  }

  FutureOr<void> homeYogaExerciseClickedEvent(HomeYogaExerciseClickedEvent event, Emitter<HomeState> emit) {
    print('Yoga Exercise Selected');
    emit(HomeNavigateToYogaExercisePageActionState());
  }

  FutureOr<void> homeWarmUpExerciseClickedEvent(HomeWarmUpExerciseClickedEvent event, Emitter<HomeState> emit) {
    print('Warmup Exercise Selected');
    emit(HomeNavigateToWarmupExercisePageActionState());
  }

  FutureOr<void> homeMeditationTabClickedEvent(HomeMeditationTabClickedEvent event, Emitter<HomeState> emit) {
    print('Meditation Tab Selected');
    emit(HomeNavigateToMeditationPageActionState());
  }

  FutureOr<void> homeProfileTabClickedEvent(HomeProfileTabClickedEvent event, Emitter<HomeState> emit) {
    print('Profile Tab Selected');
    emit(HomeNavigateToProfilePageActionState());
  }

  FutureOr<void> homePageTabClickedEvent(HomePageTabClickedEvent event, Emitter<HomeState> emit) {
    print('Home Tab Selected');
    emit(HomeNavigateToHomePageActionState());

  }
}
