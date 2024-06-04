// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter_application_12/helpers/sgl_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/home.dart';

void main() {
  runApp(MyApp(
    title: 'Easy pos',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy pos',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff216be2),
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: getMaterialColor(const Color(0xff216be2)),
          backgroundColor: Colors.white,
          cardColor: Colors.blue.shade200,
          errorColor: Colors.red,
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }

  MaterialColor getMaterialColor(Color color) {
    final Map<int, Color> shades = {
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    };
    return MaterialColor(color.value, shades);
  }

  //var materialColor = getMaterialColor(Color(0xFF42A5F5));

//print(materialColor);

  final String title;
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    ),
  )); // This trailing comma makes auto-formatting nicer for build methods.
}
