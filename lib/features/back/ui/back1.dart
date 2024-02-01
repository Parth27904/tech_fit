import 'package:flutter/material.dart';

class Back1 extends StatefulWidget {
  const Back1({super.key});

  @override
  State<Back1> createState() => _Back1State();
}

class _Back1State extends State<Back1> {

  String beginnerText ='WEIGHT: 2-3 KG\nSETS: 3 sets per arm\nREPS: 8 to 12 per set';
  String intermediateText ='WEIGHT: 4-6 KG\nSETS: 3 sets per arm\nREPS: 8 to 12 per set';
  String advancedText ='WEIGHT: 8-10 KG\nSETS: 3 sets per arm\nREPS: 8 to 12 per set';

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
                      'https://www.fitnesschemas.nl/images/v2/dumbell%20row.gif')),
            ),
          ),
          const Text("Dumbbell Bent Over Row",style: TextStyle(
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
          SizedBox(height: 70,),
          Column(
            children: [
              Text(displayText,
                style: TextStyle(
                  fontSize: 35,
                ),),]
          ),
        ],),
      ),
    );
  }
}
