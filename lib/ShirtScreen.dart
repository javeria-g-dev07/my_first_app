import 'package:flutter/material.dart';





class ShirtScreen extends StatefulWidget{
  const ShirtScreen({super.key});

  @override
  State<ShirtScreen> createState() => _ShirtScreenState();
}

class _ShirtScreenState extends State<ShirtScreen> {

  String type = "Shirt";
  String myColor = "Black ";
  String selectedSize = "S";
  int quantity = 1;
  Widget sizeButton(String size){
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedSize = size;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
       ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(size),
          if(selectedSize == size)
          Icon(Icons.check)

        ],),
      );
  }
  @override
  Widget build(BuildContext context){
    int total  = 1500 * quantity;
    return Scaffold(
      appBar: AppBar(
       title: Text('Shirt for girls'), 
       actions: [
        Icon(Icons.shopping_bag_sharp  ),
        SizedBox(
          width: 10,
        ),
       ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
             
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
             child: Image.asset("assets/shirt.webp",
             width: double.infinity,
             height: double.infinity,
             fit: BoxFit.fill,
             ),
            ),
           SizedBox(
            height: 10,
           ),
           Text("T-Shirt",
           style: TextStyle(
           fontSize:20, fontWeight:  FontWeight.bold
           ),),
           Text("Premium Quality Shirt",
           style: TextStyle(color: Colors.grey),),
            SizedBox(
            height: 10,
           ),
           Text("Rs.1500",
           style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.bold,
            color: Colors.green,
           ),),
            SizedBox(
            height: 5,
           ),
           Text("Select Shirt Type",
           style: TextStyle(
           fontWeight: FontWeight.bold,),),
             SizedBox(
            height: 5,
           ),
           Row(
            children: [
              ElevatedButton(
                onPressed: (){
                     type = "T-Shirt";
                  }, 
                child: Text("T-Shirt"),
                ),
                SizedBox(width: 5,),
                ElevatedButton(
                onPressed: (){
                  type = "Casual";
                 }, 
                child: Text("Casual"),),
                SizedBox(width: 5,),
                ElevatedButton(
                onPressed: (){
                  type = "Formal";
                 }, 
                child: Text("formal"),),
            ],
           ),
         
                SizedBox(width: 5,),
                Text("Select Color",
                style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Row(
                  children: [
                    GestureDetector(
                onTap: (){
                   myColor = "Black";
                 }, 
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 15,
                ),),
                SizedBox(width: 15,),
                GestureDetector(
                onTap: (){
                   myColor = "pink";
                 }, 
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                   radius: 15,
                ),
                ),
                SizedBox(width: 15,),
                GestureDetector(
                onTap: (){
                  setState(() {
                    myColor = "grey";
                       
                  });
                }, 
                child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 15,
                
                )),
                SizedBox(width: 15,),
                GestureDetector(
                onTap: (){
                  setState(() {
                    myColor = "mehroon";
                  });
                }, 
                child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 123, 9, 1),
                radius: 15,
                ),),
                  ] ,
               ),
               
                SizedBox(height: 5,),
                Text("Select Size",
                style: TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox(height: 5,),
                Row(
                  children: [
                    sizeButton('S'),
                    SizedBox(width: 10),
                    sizeButton('M'),
                    SizedBox(width: 10), 
                    sizeButton('L'),
                    SizedBox(width: 10), 
                    sizeButton('XL'),
                    SizedBox(width: 10), 
                    sizeButton('XXL'),
                  ],
                ), 
              
                SizedBox(height: 5,), 
                Text("Quantity",
                style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          if (quantity> 1){
                            quantity = quantity - 1;
                          } 
                        });
                       
                      }, 
                      icon: Icon(Icons.remove_circle_outline,
                      size:30),
                        ),
                         SizedBox(width: 10),
                        Text("$quantity",
                         style: TextStyle(fontSize: 20)),
                         SizedBox(width: 10),
                         IconButton(
                      onPressed: (){
                        setState(() {
                         quantity = quantity + 1; 
                        });
                     
                        }, 
                      icon:Icon(Icons.add_circle_outline,
                      size: 30,),
                       ),
                  ],
                ),
                 SizedBox(height: 5),
                 Text("Total: Rs. $total",
                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                 color: Colors.green),),
                 SizedBox(height: 5),
                Container(
                 
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                       
                      backgroundColor: Colors.black,
                
                    ),
                     child: Text("ADDED TO CART",
                     style: TextStyle(color: Colors.white),),
                     ),
                )
           ],
        ),
      ),
      ),
    
    );
  }
}
