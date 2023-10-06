import 'package:calculator_pro/themes/darkTheme.dart';
import 'package:calculator_pro/themes/lightTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/CalculatorScreen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
      ).then((value) => runApp(
        const MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Calculator(),
    );
  }

}