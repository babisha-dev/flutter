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
  

    home: DefaultTabController(
      length:2,
      
      child: Scaffold(
        appBar: AppBar(
        title: Text("flutter tabs"),
        bottom: TabBar(
          tabs: [
            Tab(text:"home"),
            Tab(text: "Profile"),
          ],
        ),
        ),
        body: TabBarView(
  children: [
              // TAB 1 → ListView
              ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Person ${index + 1}",
                    textAlign: TextAlign.center,
                   ), );
                },
              ),

              // TAB 2 → Any widget
              Center(child: Text("Profile Screen")),
            ],
),

      )
    ),
  );
  
}
}



