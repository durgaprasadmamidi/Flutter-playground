import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  Mainscreen(),
          );
        }
      }
      
      class Mainscreen extends StatefulWidget {
        Mainscreen({Key key}) : super(key: key);
      
        @override
        _MainscreenState createState() => _MainscreenState();
      }
      
      class _MainscreenState extends State<Mainscreen> {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(title:Text("Flutter Playground"),),
            floatingActionButton: FloatingActionButton(
              child:Icon(Icons.add),
              onPressed: () {
                
              },),
          );
        }
      }