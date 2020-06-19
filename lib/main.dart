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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Playground"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              Center(
                  child: Image.network(
                "https://images.unsplash.com/photo-1592430571922-763fca445247?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                fit: BoxFit.cover,
              )),
              SizedBox(
                height: 15,
              ),
              Text("Durga Prasad Mamidi"),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Durga Prasad Mamidi"),
                accountEmail: Text("durgaprasadmamidi1608@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1442328166075-47fe7153c128?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Durga Prasad Mamidi"),
              subtitle: Text("Flutter Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {
                
              },
            ),
            ListTile(
            leading: Icon(Icons.mail),
            title: Text("G-mail"),
            subtitle: Text("durgaprasad.mamidi1608@gmail.com"),
            trailing: Icon(Icons.edit),
            onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}
