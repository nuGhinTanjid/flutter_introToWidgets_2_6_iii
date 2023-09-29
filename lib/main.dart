

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  List<String> students = [
    'Tonmoy',
    'Tanjid',
    'Islam',
    'Beng',
    'Tonmoy',
    'Tanjid',
    'Islam',
    'Beng',
    'Tonmoy',
    'Tanjid',
    'Islam',
    'Beng',
    'Tonmoy',
    'Tanjid',
    'Islam',
    'Beng',
    'Tonmoy',
    'Tanjid',
    'Islam',
    'Beng',

  ];
  Map<int, String> universities ={
    1: 'LU',
    2: 'LU',
    3: 'LU',
    4: 'LU',
    5: 'LU',


  };
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Module: 6_iii'),
       leading: IconButton(
         onPressed: () {},
         icon: Icon(Icons.home_outlined),
       ),
       actions: [
         IconButton(onPressed: () {},  icon: Icon(Icons.notifications_none)),
       ],
       centerTitle: true,
     ),
     // body: ListView.builder(
     //            scrollDirection: Axis.vertical,
     //              padding: EdgeInsets.all(16),
     //
     //              itemCount: students.length,
     //              itemBuilder: (context, index){
     //                return Column(
     //                  children: [
     //                    ListTile(
     //                      title: Text(students[index]),
     //                      // tileColor: Colors.grey.shade400,
     //                      // title: Text('tonmoy'),
     //                      // subtitle: Text('Tanjid'),
     //                      // leading: Text('islam'),
     //                      // trailing: Text('tit'),
     //                    ),
     //                    Divider(
     //                      height: 0.5,
     //                      color: Colors.black,
     //                    )
     //                  ],
     //                );
     //              }
     //
     //
     //
     //          ),



     body: SingleChildScrollView(
       child: Column(
         children: [
           Scrollbar(
             child: ListView.separated(
               primary: false,
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 padding: EdgeInsets.all(16),

                 itemCount: students.length,
                 itemBuilder: (context, index){
                   return Column(
                     children: [
                       ListTile(
                         title: Text(students[index]),
                         // tileColor: Colors.grey.shade400,
                         // title: Text('tonmoy'),
                         // subtitle: Text('Tanjid'),
                         // leading: Text('islam'),
                         // trailing: Text('tit'),
                       ),
                       // Divider(
                       //   height: 0.5,
                       //   color: Colors.black,
                       // )
                     ],
                   );
                 },
                  separatorBuilder: (context, index){
                   return  Divider(
                   height: 0.5,
                   color: Colors.black,
   );

   },


             ),
           ),
           SizedBox(
             height:120 ,
             child: ListView.builder(//ListView.separated (
               primary: false,
               shrinkWrap: true,

               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.all(16),

               itemCount: students.length,
               itemBuilder: (context, index){
                 return Text(students[index],); /*Column(
                   children: [
                     ListTile(
                       title: Text(students[index]),
                       // tileColor: Colors.grey.shade400,
                       // title: Text('tonmoy'),
                       // subtitle: Text('Tanjid'),
                       // leading: Text('islam'),
                       // trailing: Text('tit'),
                     ),
                     // Divider(
                     //   height: 0.5,
                     //   color: Colors.black,
                     // )
                   ],
                 );*/
               },
               /*separatorBuilder: (context, index){
                 return  Divider(
                   height: 0.5,
                   color: Colors.black,
                 );*/

               //},


             ),
           ),
         ],
       ),
     ),



     /*body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.grey.shade400,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade400,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.green.shade400,
              ),
              
              Positioned(
                bottom: 0,
                right: 0,
                top: 0,
                child: Container(
                  width: 70,
                  height: 70,
                  color: Colors.purple.shade400,
                ),
              ),
              Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                      child: Text('Tanjid Tonmoy', style: TextStyle(color: Colors.white),)
                  ),
              )
            ],

          ),*/
        //],
     //),


   );
  }

}

