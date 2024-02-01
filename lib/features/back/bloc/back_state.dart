part of 'back_bloc.dart';

@immutable
abstract class BackState {}

abstract class BackActionState extends BackState{}


class BackInitial extends BackState {}

class BackLoadingState extends BackState{}

class BackLoadedSuccessState extends BackState{
  late final List<BackExerciseDataModel> backExercise;

  BackLoadedSuccessState({required this.backExercise});
}

class BackErrorState extends BackState{}

class BackNavigateToBack1PageActionState extends BackActionState{}

class BackNavigateToBack2PageActionState extends BackActionState{}

class BackNavigateToBack3PageActionState extends BackActionState{}

class BackNavigateToBack4PageActionState extends BackActionState{}

class BackNavigateToBack5PageActionState extends BackActionState{}


