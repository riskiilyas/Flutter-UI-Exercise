import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: XylophonePage()
      ),
    );
  }
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

  Widget XylophoneTile(Color mColor, int index) {
    return Expanded(
        flex: 1,
        child: TextButton(
          onPressed: () {
            AssetsAudioPlayer.newPlayer().open(
                Audio('assets/audios/assets_note$index.wav'),
                autoStart: true,
                showNotification: false
            );
          },
          child: Container(
            color: mColor,
            child: null,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            XylophoneTile(Colors.red, 1),
            XylophoneTile(Colors.orange, 2),
            XylophoneTile(Colors.yellow, 3),
            XylophoneTile(Colors.green, 4),
            XylophoneTile(Colors.teal, 5),
            XylophoneTile(Colors.blue, 6),
            XylophoneTile(Colors.purple, 7),
          ],
        )
    );
  }
}
