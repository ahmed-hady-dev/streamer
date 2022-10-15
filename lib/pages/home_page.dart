import 'package:flutter/material.dart';
import 'package:streamer/pages/director_page.dart';
import 'package:streamer/pages/participant_page.dart';
import 'package:streamer/utils/router/router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _channelName = TextEditingController();
  final _userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/streamer.png'),
            const SizedBox(height: 5.0),
            const Text('Multi Streaming with friends'),
            const SizedBox(height: 40.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                controller: _userName,
                decoration: InputDecoration(
                  hintText: 'User Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.grey)),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: TextField(
                  controller: _channelName,
                  decoration: InputDecoration(
                    hintText: 'Channel Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.grey)),
                  ),
                )),
            TextButton(
              onPressed: () => MagicRouter.navigateTo(
                ParticipantPage(
                  channelName: _channelName.text,
                  userName: _userName.text,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Participant  ', style: TextStyle(fontSize: 20.0)),
                  Icon(Icons.live_tv_outlined),
                ],
              ),
            ),
            TextButton(
              onPressed: () => MagicRouter.navigateTo(DirectorPage(
                channelName: _channelName.text,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Director  ', style: TextStyle(fontSize: 20.0)),
                  Icon(Icons.cut),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
