import 'package:flutter/material.dart';
import 'package:my_first_app/practice.dart';
void main(){
runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  List<String> Students = [
    'javeria','saba','maryam','iram','laiba','misbha',
    'javeria','saba','maryam','iram','laiba','misbha',
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('whatsapp')
      ),
      body:Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
             child:  TextField(
               decoration: InputDecoration( 
               hintText: "search here",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(100.0),
             ),
             ),
              ),
          ),
          Row(
            children: [
              TextButton(onPressed: (){}, child: Text("Unread"),),
              TextButton(onPressed: (){}, child: Text("All"),),
              TextButton(onPressed: (){}, child: Text("Favorite"),),
              TextButton(onPressed: (){}, child: Text("Groups"),),
               TextButton(onPressed: (){}, child: Text("Communites"),),
             ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Students.length,
              itemBuilder:(context,index){
              return ListTile(
                leading: CircleAvatar(
                child: Icon(Icons.person),
                ),
                
                title: Text(Students[index]),
                
                subtitle: Text("how are you javeria"),
                  
             
              trailing: Column(
          mainAxisSize: MainAxisSize.min,
                   children: [
                     Text("10:00 pm"),
                     CircleAvatar(
                     radius: 10,
                     backgroundColor: Colors.green,
                     child:Text(
                      '12',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                     ),
                 ),
                   ],
     ),
            );
  },
            ),

  
  ),
  
  ],
  ),
    ),
    );
  }
}

      