part of 'warmup_bloc.dart';

@immutable
abstract class WarmupState {}

abstract class WarmupActionState extends WarmupState{}

class WarmupInitial extends WarmupState {}

class WarmupLoadingState extends WarmupState{}

class WarmupLoadedSuccessState extends WarmupState{
  late final List<WarmupExerciseDataModel> warmupExercise;

  WarmupLoadedSuccessState({required this.warmupExercise});
}

class WarmupErrorState extends WarmupState{}

class WarmupNavigateToWarmup1PageActionState extends WarmupState{}

class WarmupNavigateToWarmup2PageActionState extends WarmupState{}

class WarmupNavigateToWarmup3PageActionState extends WarmupState{}

class WarmupNavigateToWarmup4PageActionState extends WarmupState{}

class WarmupNavigateToWarmup5PageActionState extends WarmupState{}
