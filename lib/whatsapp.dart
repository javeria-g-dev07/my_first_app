import 'package:flutter/material.dart';
import 'package:my_first_app/chatHistory.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
 
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 List <String> students =[
  'Javeria','Misbah','Saba','Maryam','laiba','Tayyaba','hajra',
 ' saneha',' Eman','zaniab','hiffza','samiya','hanam','arooj','komal','sadia',
 ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        
      backgroundColor: const Color.fromARGB(255, 5, 110, 8),
      title: Text("whatsapp"),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(6.0),
         child: TextField(
          decoration:InputDecoration(
            prefixIcon:Icon(Icons.search),
            hintText:'Ask Meta AI or Search Here',
            border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(100.0)
            )
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
            child: Container(
              color: Colors.black,
            
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                bool isJaveria = students[index] == "Javeria";
                return ListTile(
                  onTap: () {
                    print(index);
                    print(index);
                    Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context) => ChatHistory(
                      name:students[index],
                      n: index
                    ),
                    )
                    );
                   },
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(students[index],
                  style: TextStyle(
                    color:Colors.white,
                  ),
                  ),
                  
                  subtitle: Text(
                    isJaveria ?"I am fine don't worry":
                    "Hellow how are you?",
                    style: TextStyle(
                     color: Colors.white,
                    ) 
                    ),
                  trailing: Column(
                    children: [
                      Text("10:00 am",
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                      CircleAvatar(
                       radius:10, 
                       backgroundColor: Colors.green,
                      child:Text(
                      '10',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      ),
                  ),
                    ],
                  ),
                );
              }
              ),
          ),
            ),
      
        ],
      ),
      floatingActionButton:
      FloatingActionButton(onPressed: (){},
      child: Icon(Icons.chat),
      ),
    ),
    );
  }
}