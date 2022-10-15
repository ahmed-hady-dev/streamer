import 'package:flutter/material.dart';

class ParticipantPage extends StatefulWidget {
  const ParticipantPage({Key? key, required this.userName, required this.channelName}) : super(key: key);
  final String userName;
  final String channelName;
  @override
  State<ParticipantPage> createState() => _ParticipantPageState();
}

class _ParticipantPageState extends State<ParticipantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ParticipantPage'),
      ),
    );
  }
}
