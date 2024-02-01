import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_fit/features/warmup/models/warmup_exercise_data_model.dart';
import 'package:tech_fit/features/warmup/ui/warmup1.dart';
import 'package:tech_fit/features/warmup/ui/warmup2.dart';
import 'package:tech_fit/features/warmup/ui/warmup3.dart';
import 'package:tech_fit/features/warmup/ui/warmup4.dart';
import 'package:tech_fit/features/warmup/ui/warmup5.dart';

class WarmupExerciseTileWidget extends StatelessWidget {
  final WarmupExerciseDataModel warmupExerciseDataModel;
  const WarmupExerciseTileWidget({super.key, required this.warmupExerciseDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(warmupExerciseDataModel.id == 'warmup1'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Warmup1()));
        }
        else if(warmupExerciseDataModel.id == 'warmup2'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Warmup2()));
        }
        else if(warmupExerciseDataModel.id == 'warmup3'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Warmup3()));
        }
        else if(warmupExerciseDataModel.id == 'warmup4'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Warmup4()));
        }
        else if(warmupExerciseDataModel.id == 'warmup5'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Warmup5()));
        }
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(warmupExerciseDataModel.imageUrl),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  warmupExerciseDataModel.name,
                  style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
