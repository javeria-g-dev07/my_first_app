import 'package:flutter/material.dart';


void main(){
  runApp(const register());
}
class register extends StatefulWidget{
  const register({super.key});

  @override
  State<register> createState() => _registerState();

}
class _registerState extends State<register>{

  var nameController = TextEditingController();
  var eamilController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();
  

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         
        title: Text("createaccount"),
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
               Colors.white,Colors.purple,
                ]
              )
            ),
          
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create Account',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
            ),
            
            SizedBox(
              height: 10,
            ),
             TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                
                hintText: "Enter your name",
              ),
            ),
             SizedBox(
              height: 10,
            ),
             TextField(
              controller: eamilController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                hintText: "Enter your email"
              ),
            ),
             SizedBox(
              height: 10,
            ),
          
            
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.remove_red_eye),
                   ),
                hintText: "Enter your password"
              ),
            ),
             SizedBox(
              height: 10,
            ),
             TextField(
              controller: confirmpasswordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: (){},
                   icon: Icon(Icons.remove_red_eye),
                   ),
                hintText: "Enter your confirmpassword"
              ),
            ),
             SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){},
             child: Text("Register"),
             )
          ],
        ),
      )
    )
    )
    );
    
  }
}