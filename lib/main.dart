import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
 // const MyApp({super.key});

 


@override
  Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Flutter Practice',
    theme: ThemeData(primarySwatch:Colors.blue),
    home:HomePage(),

  );
  
}
}

class HomePage extends StatefulWidget{
//  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Scaffold'),

      ),

      body: Center(
        child: Text('Home Screen', style: TextStyle(fontSize: 22),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('FAB CLicked')),
      );
      },
child: Icon(Icons.add),
       ),
    );
  }

}
