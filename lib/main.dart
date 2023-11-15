import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light
      ),
      home: MyHomePage(title: "My Mood",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
 
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: 
          <Widget>[
             const CupertinoSliverNavigationBar(
              largeTitle: Text('My Mood'),
            ),
            SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("How I'm feeling right now"),
                  Lottie.asset('assets/ani2.json'),
                ],
              ),
            )
          ]
      )
    );
  }
}
