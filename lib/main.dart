import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              elevation: 5.0,
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  assetsAudioPlayer.open(
                    Audio("assets/audios/recording1.mp3"),
                  );
                },
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  'Play song local file',
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 5.0,
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  assetsAudioPlayer.playOrPause();
                },
                minWidth: 42.0,
                height: 42.0,
                child: Icon(Icons.play_arrow),
              ),
            ),
            /*Material(
              elevation: 5.0,
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  final assetsAudioPlayer2 = AssetsAudioPlayer();
                  assetsAudioPlayer2.open(
                    Audio.network(
                    "https://files.freemusicarchive.org/storage-freemusicarchive-org/music/Music_for_Video/springtide/Sounds_strange_weird_but_unmistakably_romantic_Vol1/springtide_-_03_-_We_Are_Heading_to_the_East.mp3)",
                  );
                },
                minWidth: 42.0,
                height: 42.0,
                child: Text(
                  'Play song link',
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
