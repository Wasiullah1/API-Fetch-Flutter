import 'package:api_practice/model/practice_model.dart';
import 'package:api_practice/screens/home.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context) => MyModel()),
    ], child: const MaterialApp(home: Home()));
  }
}
