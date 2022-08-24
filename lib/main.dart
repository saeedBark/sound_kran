// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyMusic());
}

class MyMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playMusic(int musicNumber) {
      final player = AudioCache(prefix: 'assets/');
      player.play('seed-$musicNumber.m4a');
    }

    Expanded myButton(int musicnumber, Color buttonColor, String buttonText) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 1),
          child: ElevatedButton(
            onPressed: () {
              playMusic(musicnumber);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 30,
                      color: buttonColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.music_note,
                    color: buttonColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              ' رجل رضي بالقدر',
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, Colors.red, 'الدخان_احمد خضر'),
            myButton(2, Colors.blue, 'سورة الزخرف  '),
            myButton(3, Colors.green, 'صوت جميل جدا '),
            myButton(4, Colors.yellow, ' النجم__احمد خضر'),
            myButton(5, Colors.grey, '  سورة الانبياء _جميل'),
            myButton(6, Colors.black, 'اسلام_خاتمة المؤمنين'),
            myButton(7, Colors.blue, 'سورة طه_اسلام'),
            myButton(8, Colors.purple, 'عبد الرحمن سعد '),
            myButton(9, Colors.blueGrey, ' عمر شميم'),
            myButton(10, Colors.red, ' صوت جميل '),
          ],
        ),
      ),
    );
  }
}
