import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_fit/features/back/ui/back.dart';
import 'package:tech_fit/features/home/bloc/home_bloc.dart';
import 'package:tech_fit/features/home/ui/home_exercise_tile_widget.dart';
import 'package:tech_fit/features/meditation/ui/meditation.dart';
import 'package:tech_fit/features/warmup/ui/warmup.dart';
import 'package:tech_fit/features/yoga/ui/yoga.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToBackExercisePageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Back()));
        } else if (state is HomeNavigateToYogaExercisePageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Yoga()));
        } else if (state is HomeNavigateToWarmupExercisePageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Warmup()));
        } else if (state is HomeNavigateToMeditationPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Meditation()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case HomeLoadedSuccessState:
            final successState = state as HomeLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                backgroundColor: Colors.teal,
                title: const Text(
                  "TechFIT",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.teal,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'TechFIT',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            '"Train yourself to be PERFECT"',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.fitness_center,
                        color: Colors.teal,
                      ),
                      title: const Text('Back Exercise'),
                      onTap: () {
                        homeBloc.add(HomeBackExerciseClickedEvent());
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.fitness_center,
                        color: Colors.teal,
                      ),
                      title: const Text('Warmup Exercise'),
                      onTap: () {
                        homeBloc.add(HomeWarmUpExerciseClickedEvent());
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.hearing,
                        color: Colors.teal,
                      ),
                      title: const Text('Meditation'),
                      onTap: () {
                        homeBloc.add(HomeMeditationTabClickedEvent());
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.accessibility_new,
                        color: Colors.teal,
                      ),
                      title: const Text('Yoga'),
                      onTap: () {
                        homeBloc.add(HomeYogaExerciseClickedEvent());
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.center_focus_strong_outlined,
                        color: Colors.teal,
                      ),
                      title: const Text('AR Fitness'),
                      onTap: () {
                        homeBloc.add(HomeYogaExerciseClickedEvent());
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.teal,
                      ),
                      title: const Text('Profile'),
                      onTap: () {
                        homeBloc.add(HomeYogaExerciseClickedEvent());
                      },
                    )
                  ],
                ),
              ),
              body: ListView.builder(
                  itemCount: successState.exercise.length,
                  itemBuilder: (context, index) {
                    return ExerciseTileWidget(
                        exerciseDataModel: successState.exercise[index]);
                  }),
            );
          case HomeErrorState:
            return const Scaffold(body: Center(child: Text('Error')));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
