import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_fit/features/back/bloc/back_bloc.dart';
import 'package:tech_fit/features/back/ui/back1.dart';

import 'back2.dart';
import 'back3.dart';
import 'back4.dart';
import 'back5.dart';
import 'back_exercise_tile_widget.dart';

class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backBloc.add(BackInitialEvent());
  }

  final BackBloc backBloc = BackBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BackBloc,BackState>(
      bloc: backBloc,
      listenWhen: (previous, current) => current is BackActionState,
      buildWhen: (previous, current) => current is! BackActionState,
      listener: (context,state){
        if(state is BackNavigateToBack1PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Back1()));
        }
        else if(state is BackNavigateToBack2PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Back2()));
        }
        else if(state is BackNavigateToBack3PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Back3()));
        }
        else if(state is BackNavigateToBack4PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Back4()));
        }
        else if(state is BackNavigateToBack5PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Back5()));
        }
      },
      builder: (context,state){
        switch (state.runtimeType){
          case BackLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case BackLoadedSuccessState:
            final successState = state as BackLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                backgroundColor: Colors.teal,
                title: const Text(
                  "Back Exercises",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              body: ListView.builder(
                  itemCount: successState.backExercise.length,
                  itemBuilder: (context, index) {
                    return BackExerciseTileWidget(
                        backExerciseDataModel: successState.backExercise[index]);
                  }),
            );
          case BackErrorState:
            return const Scaffold(body: Center(child: Text('Error')));
          default:
            return const SizedBox();
        }
      },
    );
  }
}