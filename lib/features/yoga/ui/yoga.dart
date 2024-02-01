import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_fit/features/yoga/bloc/yoga_bloc.dart';
import 'package:tech_fit/features/yoga/ui/yoga1.dart';
import 'package:tech_fit/features/yoga/ui/yoga2.dart';
import 'package:tech_fit/features/yoga/ui/yoga3.dart';
import 'package:tech_fit/features/yoga/ui/yoga4.dart';
import 'package:tech_fit/features/yoga/ui/yoga5.dart';
import 'package:tech_fit/features/yoga/ui/yoga_exercise_tile_widget.dart';

class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backBloc.add(YogaInitialEvent());
  }

  final YogaBloc backBloc = YogaBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YogaBloc,YogaState>(
      bloc: backBloc,
      listenWhen: (previous, current) => current is YogaActionState,
      buildWhen: (previous, current) => current is! YogaActionState,
      listener: (context,state){
        if(state is YogaNavigateToBack1PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Yoga1()));
        }
        else if(state is YogaNavigateToBack2PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Yoga2()));
        }
        else if(state is YogaNavigateToBack3PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Yoga3()));
        }
        else if(state is YogaNavigateToBack4PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Yoga4()));
        }
        else if(state is YogaNavigateToBack5PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Yoga5()));
        }
      },
      builder: (context,state){
        switch (state.runtimeType){
          case YogaLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case YogaLoadedSuccessState:
            final successState = state as YogaLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                backgroundColor: Colors.teal,
                title: const Text(
                  "Yoga Exercises",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              body: ListView.builder(
                  itemCount: successState.yogaExercise.length,
                  itemBuilder: (context, index) {
                    return YogaExerciseTileWidget(
                        yogaExerciseDataModel: successState.yogaExercise[index]);
                  }),
            );
          case YogaErrorState:
            return const Scaffold(body: Center(child: Text('Error')));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
