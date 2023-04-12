
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      home: Home(),
    ));

    class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ID CARD'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,40 , 30, 0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Center(
            child: CircleAvatar(backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-190bef3af6e815401e25f6a97c33df8b-lq'),
            radius: 50,),
          ),
        Divider(height: 100,),
            Text('NAME',
            style: TextStyle(color: Colors.grey[100],letterSpacing: 2.0),
            ),
           Padding(
            padding: EdgeInsets.all(10),
             child: Text('Nikhil Singh',
             style: TextStyle(fontSize: 20,color: Colors.amber,letterSpacing: 2.0) ,
             ),
           ),
           SizedBox(height: 10,),
           Text('RANK',
            style: TextStyle(color: Colors.grey[100],letterSpacing: 2.0),
            ),
            Padding(
            padding: EdgeInsets.all(10),
             child: Text('3',
             
             style: TextStyle(fontSize: 20,color: Colors.amber,letterSpacing: 2.0) ,
             ),
           ),
           SizedBox(height: 10,),
           Text('EMAIL',
            style: TextStyle(color: Colors.grey[100],letterSpacing: 2.0),
            ),
             SizedBox(height: 10,),
            Row(
              
              children: <Widget>[
                Icon(Icons.email,
                 
                color: Colors.grey[200], 
                  ),
                SizedBox(height: 10,),

                Text('  singhnikhil8285@gmail.com',  style: TextStyle(color: Colors.amber,letterSpacing: 2.0),
            )
              ],
            ),
           
          ],
          
         ),
      ),
    );
  }
}