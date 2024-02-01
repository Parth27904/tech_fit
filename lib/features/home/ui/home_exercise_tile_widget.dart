import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tech_fit/features/back/ui/back.dart';
import 'package:tech_fit/features/home/models/home_exercise_data_model.dart';
import 'package:tech_fit/features/meditation/ui/meditation.dart';
import 'package:tech_fit/features/warmup/ui/warmup.dart';
import 'package:tech_fit/features/yoga/ui/yoga.dart';

class ExerciseTileWidget extends StatelessWidget {
  final ExerciseDataModel exerciseDataModel;
  const ExerciseTileWidget({super.key, required this.exerciseDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(exerciseDataModel.id == 'back'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Back()));
        }
        else if(exerciseDataModel.id == 'yoga'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga()));
        }
        else if(exerciseDataModel.id == 'warmup'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Warmup()));
        }
        else if(exerciseDataModel.id == 'meditation'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Meditation()));
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
                      image: NetworkImage(exerciseDataModel.imageUrl),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  exerciseDataModel.name,
                  style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            backgroundColor: Colors.teal,
                            title: Center(
                              child: Text(exerciseDataModel.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),),
                            ),
                            content: SingleChildScrollView(
                              child: Text(exerciseDataModel.description,
                                style: const TextStyle(
                                    color: Colors.white,
                                  fontSize: 18
                                ),),
                            ),
                          );
                      });
                    },
                    icon: const Icon(
                      Icons.info_outline,
                      color: Colors.black,
                    )),
              ],
            ),
            // const SizedBox(height: 20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("\$${exerciseDataModel.price}",style: const TextStyle(
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold
            //     ),),
            //     Row(
            //       children: [
            //         IconButton(
            //             onPressed: () {
            //               // homeBloc.add(HomeWishlistButtonNavigateEvent());
            //             },
            //             icon: const Icon(
            //               Icons.favorite_border,
            //               color: Colors.black,
            //             )),
            //         IconButton(
            //             onPressed: () {
            //               // homeBloc.add(HomeCartButtonNavigateEvent());
            //             },
            //             icon: const Icon(
            //               Icons.shopping_cart_outlined,
            //               color: Colors.black,
            //             )),
            //       ],
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
