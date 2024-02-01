import 'package:flutter/material.dart';
import 'package:tech_fit/features/back/models/back_exercise_data_model.dart';
import 'package:tech_fit/features/back/ui/back1.dart';
import 'package:tech_fit/features/back/ui/back2.dart';
import 'package:tech_fit/features/back/ui/back3.dart';
import 'package:tech_fit/features/back/ui/back4.dart';
import 'package:tech_fit/features/back/ui/back5.dart';

class BackExerciseTileWidget extends StatelessWidget {
  final BackExerciseDataModel backExerciseDataModel;
  const BackExerciseTileWidget({super.key, required this.backExerciseDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: (){
      if(backExerciseDataModel.id == 'back1'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Back1()));
      }
      else if(backExerciseDataModel.id == 'back2'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Back2()));
      }
      else if(backExerciseDataModel.id == 'back3'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Back3()));
      }
      else if(backExerciseDataModel.id == 'back4'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Back4()));
      }
      else if(backExerciseDataModel.id == 'back5'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Back5()));
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
                      image: NetworkImage(backExerciseDataModel.imageUrl),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  backExerciseDataModel.name,
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

