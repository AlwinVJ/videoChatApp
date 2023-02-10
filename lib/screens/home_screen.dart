import 'dart:math';

import 'package:flutter/material.dart';
import 'package:videocall_app/screens/video_chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String conferenceID = 'conference_id';
    String userID = Random().nextInt(1000).toString();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Video Chat App',
          style: TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom:20.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical:20,horizontal: 30),
                backgroundColor: Colors.green.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              icon: const Icon(Icons.video_call),
              label: const Text('Join Video Call',
              style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return VideoChatScreen(
                    confid: conferenceID,
                    usersId: userID,
                  );
                }));
              },
          ),
        ),
      ),
    )));
  }
}
