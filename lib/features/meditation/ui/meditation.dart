import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Meditation extends StatefulWidget {
  const Meditation({super.key});

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  int timeLeft = 60;
  final player = AudioPlayer();

  _startCountDown() async{
    player.play(AssetSource('music.mp3'));
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Container(
            height: 260,
            decoration: const BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJtdEOq2jk4Zj92IQhc_6OtjbcioYiqSs4Sg&usqp=CAU')
              ),
            ),
          ),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text('Meditation',style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35
                  ),),
                const Text("1-6 min course",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 150,),
                Wrap(
                  children: [
                    Container(padding: EdgeInsets.all(8),
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(offset: Offset(0,17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: Colors.black)
                        ]
                      ),
                      child: Row(
                        children: [
                          Container(height: 42,
                          width: 43,
                          decoration: const BoxDecoration(color: Colors.teal,
                          shape: BoxShape.circle),
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.play_arrow),
                                onPressed: (){
                                  timeLeft = 60;
                                  _startCountDown();
                                }),
                          ),
                          SizedBox(width: 10,),
                          Text("1 minute")
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(padding: EdgeInsets.all(8),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(offset: Offset(0,17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.black)
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(height: 42,
                            width: 43,
                            decoration: const BoxDecoration(color: Colors.teal,
                                shape: BoxShape.circle),
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.play_arrow),
                                onPressed: (){
                                    timeLeft = 120;
                                    _startCountDown();
                                }),
                          ),
                          SizedBox(width: 10,),
                          Text("2 minutes")
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Wrap(
                  children: [
                    Container(padding: EdgeInsets.all(8),
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(offset: Offset(0,17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.black)
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(height: 42,
                            width: 43,
                            decoration: const BoxDecoration(color: Colors.teal,
                                shape: BoxShape.circle),
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.play_arrow),
                                onPressed: (){
                                  timeLeft = 180;
                                  _startCountDown();
                                }),
                          ),
                          SizedBox(width: 10,),
                          Text("3 minutes")
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(padding: EdgeInsets.all(8),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(offset: Offset(0,17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.black)
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(height: 42,
                            width: 43,
                            decoration: const BoxDecoration(color: Colors.teal,
                                shape: BoxShape.circle),
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.play_arrow),
                                onPressed: (){
                                  timeLeft = 240;
                                  _startCountDown();
                                }),
                          ),
                          SizedBox(width: 10,),
                          Text("4 minutes")
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Wrap(
                  children: [
                    Container(padding: EdgeInsets.all(8),
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(offset: Offset(0,17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.black)
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(height: 42,
                            width: 43,
                            decoration: const BoxDecoration(color: Colors.teal,
                                shape: BoxShape.circle),
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.play_arrow),
                                onPressed: (){
                                  timeLeft = 300;
                                  _startCountDown();
                                }),
                          ),
                          SizedBox(width: 10,),
                          Text("5 minutes")
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(padding: EdgeInsets.all(8),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(offset: Offset(0,17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.black)
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(height: 42,
                            width: 43,
                            decoration: const BoxDecoration(color: Colors.teal,
                                shape: BoxShape.circle),
                            child: IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.play_arrow),
                                onPressed: (){
                                  timeLeft = 360;
                                  _startCountDown();
                                }),
                          ),
                          SizedBox(width: 10,),
                          Text("6 minutes")
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(height: 150,
                            width: 150,
                            decoration: const BoxDecoration(color: Colors.teal,
                                shape: BoxShape.circle),
                            child: Center(
                                child: Text(timeLeft.toString(),style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white
                                ),)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
