import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}




//Stateful Widget
//TextField

class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}


//OnChange
// class MyHomePageState extends State<MyHomePage>{


// //State is the data used in application
// //call Ephemeral State  //field within the class that extends State is call Ephemeral State
//   String name= "Mg Mg";  //do not create setState within build//in State
//   String email = " ";

//   Widget build(BuildContext context){  //when call setState ,rerun build method//recreate widget

//     print("Build Method");

//     return MaterialApp(
//       home: Scaffold(  
//         appBar: AppBar(title: Text("My App"),),
//         body: Column(children: [

//           Container(child: 
//           Text(email)
//           ,),
          
//           Container(
//             margin: EdgeInsets.all(5),
//             width: 300,
//             child: TextField(
//               onChanged: (val){

//                 setState(() {
//                   email = val;
//                 });
//                   //print(val);
//               },
//               decoration: InputDecoration(  
//                 hintText: "Email",
//                 labelText: "User Email",
//                 border: OutlineInputBorder(),
//               ),

//           )
//           ),
         

//           Container(child: Text(name),),

//           OutlinedButton(  
//             onPressed: (){
//               setState(() {  //do not include within stateless widget
//                 name = "Aung Aung";
//               });

//             },
//             child: Text("Click")
//           )



//         ],),
//       ),
//     );
//   }
// }  


//TextEditingController
class MyHomePageState extends State<MyHomePage>{


//State is the data used in application
//call Ephemeral State  //field within the class that extends State is call Ephemeral State
  String name= "Mg Mg";  //do not create setState within build//in State
  String email = " ";

  TextEditingController textController = TextEditingController();

  Widget build(BuildContext context){  //when call setState ,rerun build method//recreate widget

    print("Build Method");

    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar(title: Text("My App"),),
        body: Column(children: [

          Container(child: 
          Text(email)
          ,),
          
          Container(
            margin: EdgeInsets.all(5),
            width: 300,
            child: TextField(

              controller: textController,  //linked with textField and Controller
              
              decoration: InputDecoration(  
                hintText: "Email",
                labelText: "User Email",
                border: OutlineInputBorder(),
              ),

          )
          ),

          OutlinedButton(  
            onPressed: (){
              //print(textController.text);
              setState(() {
                email = textController.text;
              });
            },
            child: Text("Send"),
          ),

         
          Container(child: Text(name),),

          OutlinedButton(  
            onPressed: (){
              setState(() {  //do not include within stateless widget
                name = "Aung Aung";
              });

            },
            child: Text("Click")
          )



        ],),
      ),
    );
  }
}


