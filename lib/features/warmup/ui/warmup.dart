import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_fit/features/warmup/bloc/warmup_bloc.dart';
import 'package:tech_fit/features/warmup/ui/warmup1.dart';
import 'package:tech_fit/features/warmup/ui/warmup2.dart';
import 'package:tech_fit/features/warmup/ui/warmup3.dart';
import 'package:tech_fit/features/warmup/ui/warmup4.dart';
import 'package:tech_fit/features/warmup/ui/warmup5.dart';
import 'package:tech_fit/features/warmup/ui/warmup_exercise_tile_widget.dart';

class Warmup extends StatefulWidget {
  const Warmup({super.key});

  @override
  State<Warmup> createState() => _BackState();
}

class _BackState extends State<Warmup> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    warmupBloc.add(WarmupInitialEvent());
  }

  final WarmupBloc warmupBloc = WarmupBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WarmupBloc,WarmupState>(
      bloc: warmupBloc,
      listenWhen: (previous, current) => current is WarmupActionState,
      buildWhen: (previous, current) => current is! WarmupActionState,
      listener: (context,state){
        if(state is WarmupNavigateToWarmup1PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Warmup1()));
        }
        else if(state is WarmupNavigateToWarmup2PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Warmup2()));
        }
        else if(state is WarmupNavigateToWarmup3PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Warmup3()));
        }
        else if(state is WarmupNavigateToWarmup4PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Warmup4()));
        }
        else if(state is WarmupNavigateToWarmup5PageActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Warmup5()));
        }
      },
      builder: (context,state){
        switch (state.runtimeType){
          case WarmupLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case WarmupLoadedSuccessState:
            final successState = state as WarmupLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                backgroundColor: Colors.teal,
                title: const Text(
                  "Warmup Exercises",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              body: ListView.builder(
                  itemCount: successState.warmupExercise.length,
                  itemBuilder: (context, index) {
                    return WarmupExerciseTileWidget(
                        warmupExerciseDataModel: successState.warmupExercise[index]);
                  }),
            );
          case WarmupErrorState:
            return const Scaffold(body: Center(child: Text('Error')));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
