import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Ninja_ID(),
));

class Ninja_ID extends StatefulWidget {



  @override
  State<Ninja_ID> createState() => _Ninja_IDState();
}

class _Ninja_IDState extends State<Ninja_ID> {

  int ninja_level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninja_level += 1;
          });
        },
        child: Icon(CupertinoIcons.plus),
        backgroundColor: Colors.grey[800],
      ),

      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),

       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[

           const Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('asset/download.jpeg'),
               radius: 50.0,

             ),
           ),
           const Divider(
             height: 60.0,
             color: Colors.grey,
           ),
           const Text('NAME',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0
          ),),

           const Text('Chuin_LI',
             style: TextStyle(
                 color: Colors.yellowAccent,
                 letterSpacing: 2.0,
               fontSize: 28.0,
               fontWeight: FontWeight.bold
             ),
           ),

           SizedBox(height : 30.0),

           const Text('Current Level',
             style: TextStyle(
                 color: Colors.grey,
                 letterSpacing: 2.0
             ),),

            Text('$ninja_level',
             style: const TextStyle(
                 color: Colors.yellowAccent,
                 letterSpacing: 2.0,
                 fontSize: 28.0,
                 fontWeight: FontWeight.bold
             ),),

           const SizedBox(height: 30.0),

           Row(
             children: const <Widget>[
               Icon(
                 Icons.email,
                 color: Colors.grey,
               ),

               SizedBox(width: 10.0),

               Text('chuinli@gamil.com',
               style: TextStyle(
                 color: Colors.grey
               ),)

             ],
           )




         ],
       ),

      ),
    );
  }
}
