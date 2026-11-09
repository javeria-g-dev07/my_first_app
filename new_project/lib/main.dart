import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override

  Widget build(BuildContext contex){
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("loginPage"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.black,
            ]
            ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Email",
                    prefixIcon: Icon(Icons.email),

                  ),
                ),
                 SizedBox(
                      height: 20,
                    ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Password",
                    prefixIcon: Icon(Icons.password),
                   ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    

              ],
            ),
      ),
      ),
    );
  }
  
  
}