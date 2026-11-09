import 'package:flutter/material.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      backgroundColor:  Colors.orangeAccent,
      title: Text('Everything delivery service kamoke'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 255, 95, 2),const Color.fromARGB(255, 32, 28, 28),
            ]
          )
        ),
        child:Padding(
          padding: const EdgeInsets.all(24.0),
        child: Column(

          children: [
            Text('welcom back',
            style: TextStyle(
            color: Colors. white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your email"
               ),
            ),
             SizedBox(
              height: 20,
            ),
             TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password),
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your password"
               ),
            ),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, child: Text('login'))



          ],
        ),

      )
      
      ),
      
    ),
    );
  }
}