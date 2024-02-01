part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class HomeWarmUpExerciseClickedEvent extends HomeEvent{}

class HomeBackExerciseClickedEvent extends HomeEvent{}

class HomeYogaExerciseClickedEvent extends HomeEvent{}

class HomeMeditationTabClickedEvent extends HomeEvent{}

class HomeProfileTabClickedEvent extends HomeEvent{}

class HomePageTabClickedEvent extends HomeEvent{}


