
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/stream.dart';

import 'component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  void newAdd(){
    addNewCard();
}
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    StreamController<List<String>> _controller = StreamController<List<String>>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
          stream: cardList(cardFromDB()),
          builder: (context, snapshot){
            if(!snapshot.hasData){
              return Text("meemaw");
            }
            else{
              return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, index){
                return CardX(
                  id: snapshot.data,

                );
                  }
              )
            }
          }
        )
      )
      ,
      floatingActionButton: TextButton(
        onPressed: () { addNewCard(); }, child: Text("add"),
        
      )
    );
  }
}
