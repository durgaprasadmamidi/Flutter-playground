import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  
  const HomeScreen({
    Key key,
  }) ;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
     fetch(url);
  }

  fetch(var url) async{
    var res =await http.get(url);
    data = jsonDecode(res.body);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return data != null ? 
     Container(
       color: Colors.grey[200],
            child: ListView.builder(itemBuilder: (context,index){
         return ListTile(
           title: Text(data[index]["title"]),
           subtitle: Text("ID : ${data[index]["id"]}"),
           leading: Image.network(data[index]["url"]),
         );
       },
       itemCount: data.length,),
     )
     :Container(
       color: Colors.grey,
            child: Center(
         child: CircularProgressIndicator()),
     );
  }
}

