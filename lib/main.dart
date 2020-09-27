import 'package:flutter/material.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:hover_effect_example/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = '3D Hover Effect';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          child: HoverCard(
            depth: 12.0,
            depthColor: Color(0xFFC41A3B),
            onTap: () => print('Clicked'),
            shadow: BoxShadow(
              color: Color(0xFFC41A3B),
              blurRadius: 16.0,
              spreadRadius: -16.0,
              offset: Offset(0.0, 32.0),
            ),
            builder: (context, hover) {
              return Column(
                children: <Widget>[
                  Container(
                    color: Color(0xFFFBE0E6),
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'The Tech Designer',
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFC41A3B),
                              ),
                            ),
                          ),
                          Image(
                            image: AssetImage(logo),
                            height: 215.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
