import 'package:flutter/material.dart';

class DirectorPage extends StatelessWidget {
  const DirectorPage({Key? key, required this.channelName}) : super(key: key);
  final String channelName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DirectorPage'),
      ),
    );
  }
}
