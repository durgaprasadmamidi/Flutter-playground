import 'package:flutter/material.dart';
import 'screens/appdrawer.dart';
import 'screens/HomeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Mainscreen(),
    );
  }
}

class Mainscreen extends StatefulWidget {
  Mainscreen({Key key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String nameText = "Your name here";
  // TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Playground"),
      ),
      body: HomeScreen(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // nameText = _controller.text;
          // setState(() {
            
          // });
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
