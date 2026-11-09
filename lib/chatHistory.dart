import 'package:flutter/material.dart';



class ChatHistory extends StatefulWidget {
  ChatHistory({super.key,
  required this.name,
  required this.n});
  final String name;
  final int n;
  List<String> send = [
    'hello','how are you','yes i am fine','ok',
  ];
  List<String> received = [
    'hello','how are you','yes i am fine','ok',
  ];
  bool isMe = true;
  @override
  State<ChatHistory> createState() => _ChatHistoryState();
  }
  class _ChatHistoryState extends State<ChatHistory>{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('chat'),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: widget.send.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: widget.isMe ? Alignment.centerLeft : Alignment.centerRight,
                         child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(widget.send[index]),
                          color: Colors.green,
                         ),
                         ),
                      );

                  }
                  )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),
                    ),)
            ],
          )
        ),
      );
    }

  }