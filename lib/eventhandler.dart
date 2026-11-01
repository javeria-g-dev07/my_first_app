import 'package:flutter/material.dart';
import 'package:my_first_app/theme.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool showPassword = true;
final passwordController=TextEditingController();
class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context){
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(
       backgroundColor: Colors.red,
      title: Text('Eventhandler'),  

    ),
    body: Column(
      children: [
        TextField(
          controller: passwordController,
          obscureText: showPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your password",
             prefixIcon: Icon(Icons.password),
             suffixIcon: IconButton(onPressed: (){
              setState(() {
                showPassword=!showPassword;
              });
              print(passwordController.text);
             }, 
             icon: Icon(Icons.remove_red_eye),)
          )
        ),
        ElevatedButton(onPressed: (){
          print("hey javeria how are you");
        }, child: Text('login')
        )
      ],
    ),
      ),
    );
  }
}