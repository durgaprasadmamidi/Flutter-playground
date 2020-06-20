import 'package:flutter/material.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
