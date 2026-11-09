import 'package:flutter/material.dart';

class Chatsimple extends StatelessWidget{
  final String name;

  const Chatsimple({super.key,
  required this.name});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
        appBar: AppBar(
          title: Text(name),
        ),
        body: Center(
          child: Text("chat with $name"),
        ),
      );
    
  }
}