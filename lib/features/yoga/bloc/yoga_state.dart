part of 'yoga_bloc.dart';

@immutable
abstract class YogaState {}

class YogaInitial extends YogaState {}

abstract class YogaActionState extends YogaState{}

class YogaLoadingState extends YogaState{}

class YogaLoadedSuccessState extends YogaState{
  late final List<YogaExerciseDataModel> yogaExercise;

  YogaLoadedSuccessState({required this.yogaExercise});
}

class YogaErrorState extends YogaState{}

class YogaNavigateToBack1PageActionState extends YogaActionState{}

class YogaNavigateToBack2PageActionState extends YogaActionState{}

class YogaNavigateToBack3PageActionState extends YogaActionState{}

class YogaNavigateToBack4PageActionState extends YogaActionState{}

class YogaNavigateToBack5PageActionState extends YogaActionState{}

