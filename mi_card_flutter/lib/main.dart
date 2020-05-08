import 'package:flutter/material.dart';

void main () {
	runApp (MyApp ());
}

class MyApp extends StatelessWidget {
	@override
	Widget build (BuildContext context) {
		return MaterialApp (
			home: Scaffold (
				backgroundColor: Colors.teal,
				body: SafeArea (
					child: Column (
                        mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							CircleAvatar (
								radius: 50,
								backgroundImage: AssetImage ("images/prof.jpg"),
							),
							Text (
								"Nathanael",
								style: TextStyle (
									fontSize: 40,
									color: Colors.white,
									fontWeight: FontWeight.bold,
									fontFamily: 'Pacifico'),
							),
							Text (
								"Flutter Developer",
								style: TextStyle (
									fontSize: 20,
									color: Colors.teal.shade100,
									fontFamily: 'Source Sans Pro',
									letterSpacing: 2.5,
									fontWeight: FontWeight.bold),
							),
							SizedBox(
                              height: 20,
                              width: 150,
                              child: Divider(
                                color: Colors.teal.shade100,
                              ),
                            ),
							Card (
								margin: EdgeInsets.symmetric (
									vertical: 10, horizontal: 25),
								child: Padding (
									padding: const EdgeInsets.all(0.0),
									child: ListTile (
										leading: Icon (
											Icons.phone,
											color: Colors.teal,
										),
										title: Text (
											"+62 895 0338 6642",
											style: TextStyle (
												fontFamily: 'Source Sans Pro',
												color: Colors.teal.shade900,
												fontSize: 20),
										)),
								),
							),
							Card (
								margin: EdgeInsets.symmetric (
									vertical: 10, horizontal: 25),
								child: Padding (
									padding: const EdgeInsets.all(0.0),
									child: ListTile (
										leading: Icon (
											Icons.email,
											color: Colors.teal,
										),
										title: Text (
											"Nael.nathanael71@gmail.com",
											style: TextStyle (
												fontFamily: 'Source Sans Pro',
												color: Colors.teal.shade900,
												fontSize: 20),
										),
									)),
							)
						],
					)),
			),
		);
	}
}
