import 'package:flutter/material.dart';

class Back3 extends StatefulWidget {
  const Back3({super.key});

  @override
  State<Back3> createState() => _Back3State();
}

class _Back3State extends State<Back3> {
  String beginnerText ='WEIGHT: 3-4 KG\nSETS: 3 sets\nREPS: 8 to 12 per set';
  String intermediateText ='WEIGHT: 5-8 KG\nSETS: 3 sets\nREPS: 8 to 12 per set';
  String advancedText ='WEIGHT: 9-12 KG\nSETS: 3 sets\nREPS: 8 to 12 per set';

  String displayText = '';
  String buttonPress = '';


  void changeText(){
    if(buttonPress == 'beginner'){
      setState(() {
        displayText = beginnerText;
      });
    }
    else if(buttonPress == 'intermediate'){
      setState(() {
        displayText = intermediateText;
      });
    }
    else if(buttonPress == 'advanced'){
      setState(() {
        displayText = advancedText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      'https://www.fitnesschemas.nl/images/DBUPROW.gif')),
            ),
          ),
          const Text("Standing Dumbbell Upright Row",style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  buttonPress = 'beginner';
                  changeText();
                },
                child: const Text('Beginner'),),
              ElevatedButton(
                onPressed: (){
                  buttonPress = 'intermediate';
                  changeText();
                },
                child: const Text('Intermediate'),),
              ElevatedButton(
                onPressed: (){
                  buttonPress = 'advanced';
                  changeText();
                },
                child: const Text('Advanced'),),
            ],
          ),
          const SizedBox(height: 70,),
          Column(
              children: [
                Text(displayText,
                  style: const TextStyle(
                    fontSize: 35,
                  ),),]
          ),
        ],),
      ),
    );
  }
}

