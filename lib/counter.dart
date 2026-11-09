

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());

}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { 
  RxInt counter = 1.obs;
  final box = GetStorage();
  @override
  void initState(){
    super.initState();
  
  
 counter.value =  box. read('MyCounter') ?? 0; 

  }
  
@override
Widget build(BuildContext context){
  return GetMaterialApp(
home: Scaffold(
  appBar: AppBar(title: Text("BS IT"),
  backgroundColor: Colors.amber,
  
  ),
  body: Obx(
    () => Center(
      child: Column(
      children: [
        Text('Counter: ${counter.value}'),
        FloatingActionButton(onPressed: (){
          counter.value--;
          box.write('MyCounter', {counter.value});
        },
         child: Icon(Icons.remove),
         ),
      ],
    ),
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: (){
      Get.to(LoginScreen());
      box.write('MyCounter', {counter.value});
      counter.value++;
       },
    child: Icon(Icons.plus_one_outlined),
    ),
),
  );
} 
}