import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoChatScreen extends StatelessWidget {
  final String confid;
  final String usersId;
  const VideoChatScreen({super.key,required this.confid,required this.usersId});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltVideoConference(
      appID:'app Id must be copied from zego site',
      appSign:'appSign must be copied from zego site',
      conferenceID: confid,
      userID: usersId,
      userName: 'User $usersId',
      config: ZegoUIKitPrebuiltVideoConferenceConfig(
        turnOnCameraWhenJoining: false,
        turnOnMicrophoneWhenJoining: false
      ),
      
    );
  }
}