import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//Oculta la barra de estados y botones
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      initialRoute: 'Home',
      routes: {
        'Home': (_) => const HomeScreen(),
        'Details': (_) => const DetailsArticle()
      },
    );
  }
}
