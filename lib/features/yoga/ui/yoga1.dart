import 'package:flutter/material.dart';

class Yoga1 extends StatefulWidget {
  const Yoga1({super.key});

  @override
  State<Yoga1> createState() => _Yoga1State();
}

class _Yoga1State extends State<Yoga1> {
  String beginnerText ='SETS: 3 sets\nREPS: 8 to 12 per set';
  String intermediateText ='SETS: 3 sets\nREPS: 12 to 15 per set';
  String advancedText ='SETS: 3 sets\nREPS: 16 to 20 per set';

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
                  image: AssetImage(
                      'assets/yoga1.gif')),
            ),
          ),
          const Text("Child\'s Pose (Balasana)",style: TextStyle(
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
