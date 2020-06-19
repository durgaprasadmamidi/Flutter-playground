import 'package:flutter/material.dart';

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
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Flutter Playground"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
              child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                    child: Image.network(
                  "https://images.unsplash.com/photo-1592430571922-763fca445247?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 16,
                ),
                Text(nameText),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your name",
                        labelText: "name",
                        border: OutlineInputBorder()),
                    controller: _controller,
                  ),
                )
              ],
            ),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          nameText = _controller.text;
          setState(() {});
        },
      ),
    );
  }
}
