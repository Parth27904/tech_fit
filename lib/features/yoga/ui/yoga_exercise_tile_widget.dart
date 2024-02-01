import 'package:flutter/material.dart';
import 'package:tech_fit/features/yoga/models/yoga_exercise_data_model.dart';
import 'package:tech_fit/features/yoga/ui/yoga1.dart';
import 'package:tech_fit/features/yoga/ui/yoga2.dart';
import 'package:tech_fit/features/yoga/ui/yoga3.dart';
import 'package:tech_fit/features/yoga/ui/yoga4.dart';
import 'package:tech_fit/features/yoga/ui/yoga5.dart';

class YogaExerciseTileWidget extends StatelessWidget {
  final YogaExerciseDataModel yogaExerciseDataModel;
  const YogaExerciseTileWidget({super.key, required this.yogaExerciseDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(yogaExerciseDataModel.id == 'yoga1'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga1()));
        }
        else if(yogaExerciseDataModel.id == 'yoga2'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga2()));
        }
        else if(yogaExerciseDataModel.id == 'yoga3'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga3()));
        }
        else if(yogaExerciseDataModel.id == 'yoga4'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga4()));
        }
        else if(yogaExerciseDataModel.id == 'yoga5'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga5()));
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
                      image: AssetImage(yogaExerciseDataModel.imageUrl),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  yogaExerciseDataModel.name,
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

