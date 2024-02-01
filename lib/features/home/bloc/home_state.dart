part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{
  final List<ExerciseDataModel> exercise;

  HomeLoadedSuccessState({required this.exercise});
}

class HomeErrorState extends HomeState{}

class HomeNavigateToMeditationPageActionState extends HomeActionState{}

class HomeNavigateToProfilePageActionState extends HomeActionState{}

class HomeNavigateToHomePageActionState extends HomeActionState{}

class HomeNavigateToBackExercisePageActionState extends HomeActionState{}

class HomeNavigateToYogaExercisePageActionState extends HomeActionState{}

class HomeNavigateToWarmupExercisePageActionState extends HomeActionState{}