import 'package:flutter/material.dart';
//import 'package:cfm/task/product_screen.dart';
 
class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
           padding: const EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            // center the children
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               new Align(alignment: Alignment.centerLeft, child: 
                new Text(
                      'Request Detail',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
               ),
          
                new Text(
                      'Request to provide key for Bu Dyah and Mba Henny`s drawer',
                      style: new TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
// Padding(
//                   padding: EdgeInsets.only(top: 8.0),
//                 ),
//   FloatingActionButton.extended(
//   onPressed: () {},
//   icon: Icon(Icons.save),
//   label: Text("Approve"),
//   backgroundColor: Colors.green,
// ),
//  FloatingActionButton.extended(
//   onPressed: () {},
//   icon: Icon(Icons.save),
//   label: Text("Disapprove"),
//   backgroundColor: Colors.red,
// ),
//  FloatingActionButton.extended(
//   onPressed: () {},
//   icon: Icon(Icons.save),
//   label: Text("Chat"),
//   backgroundColor: Colors.blue,
// ),
            ],
            
          ),
          
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () => {},
      //     tooltip: 'Increment',
      //     child: Icon(Icons.add),
          
      //   ),
 
//  floatingActionButton: FloatingActionButton.extended(
//   onPressed: () {},
//   icon: Icon(Icons.save),
//   label: Text("Save"),
//   backgroundColor: Colors.pink,
// ),


//         floatingActionButton: FloatingActionButton.extended(
//   onPressed: () {},
//   icon: Icon(Icons.save),
//   label: Text("Save"),
//   backgroundColor: Colors.pink,
// ),
  
    );
    return scaffold;
  }
}
  