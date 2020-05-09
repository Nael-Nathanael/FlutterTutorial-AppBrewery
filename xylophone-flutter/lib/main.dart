import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

	void playSound(int val) {
		final player = AudioCache();
		player.play('note$val.wav');
	}

	Expanded buildKey(MaterialColor color, int val) =>
		Expanded(
			child: FlatButton(
				color: color,
				onPressed: () {
					playSound(val);
				},
				child: Container(),
			),
		);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				backgroundColor: Colors.black,
				body: SafeArea(
					child: Column(
						children: <Widget>[
							buildKey(Colors.red, 1),
							buildKey(Colors.orange, 2),
							buildKey(Colors.yellow, 3),
							buildKey(Colors.green, 4),
							buildKey(Colors.teal, 5),
							buildKey(Colors.purple, 6),
							buildKey(Colors.blue, 7),
						],
					),
				),
			),
		);
	}
}
