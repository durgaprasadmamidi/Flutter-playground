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
              drawer: Drawer(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  DrawerHeader(
                    child: Text("Durga Prasad"),
                    decoration: BoxDecoration(
                      color: Colors.purple
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Durga Prasad Mamidi"),
                    subtitle: Text("Flutter Developer"),
                    trailing: Icon(Icons.edit),
                  )
                ],
              ),
              ),
          );
        }
      }