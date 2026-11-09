import 'package:flutter/material.dart';
import 'chatsimple.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Students list",
          
          style: TextStyle(color: const Color.fromARGB(255, 172, 121, 2),
          ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
           
            TextField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search Here",
                suffixIcon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                   leading: CircleAvatar(
                      child: Icon(Icons.person)),
                    title: Text("javeria"),
                    subtitle: Text("hey kasi hu"),
                   
                      onTap: () {
                      print("tapped javeria");
                    Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context) => Chatsimple(name: )),
                      );
                   },
                    ),
                  
                   ListTile(
                    title: Text("laiba"),
                    subtitle: Text("hey kasi hu"),
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                   ListTile(
                    title: Text("Ayesha"),
                    subtitle: Text("hey kasi hu"),
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                   ListTile(
                    title: Text("Alveera"),
                    subtitle: Text("hey kasi hu"),
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                   ListTile(
                    title: Text("Hanam"),
                    subtitle: Text("hey kasi hu"),
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ))
          ],
        ),
      ),
    );
  }
}