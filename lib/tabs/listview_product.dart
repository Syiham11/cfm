import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:cfm/tabs/product_screen.dart';
import 'package:cfm/model/product.dart';
import 'package:cfm/home_utama.dart';
import 'package:../cfm/home_menu.dart';
import 'package:cfm/tabs/second.dart';

class ListViewProduct extends StatefulWidget {
  @override
  _ListViewProductState createState() => _ListViewProductState();
  // _ListViewProductState createState() => _ListViewProductState();
   
}


class _ListViewProductState extends State<ListViewProduct> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
       
        // height: 570.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                  ],
                ),
                 
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                   new Text(
                      '#WR-196371 Request via application from Dev Engineer (Facilities Managements)',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                      new Text(
                      'Word Trade Center I, 10th Floor, Cornerstone',
                      style: new TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),

    //                  Row(
    //               children: <Widget>[
    //                 new Container(
    //                   color: Colors.blueGrey,
                      
                      
    //  child: Row(
       
    //     mainAxisSize: MainAxisSize.min,
    //     children: <Widget>[Icon(Icons.assignment),
        
    //      Text('Audio Visual Equipment'), ],
         
    //   ),
    
      
      
    //                 )
    //               ],
    //             ),
                new RaisedButton(
       onPressed: () => _task(context),
              child: new Row(
                children: <Widget>[
                   new Icon(Icons.assignment),
                  new Text("Audio Visual "), new Icon(Icons.date_range),
                  new Text("01 April 2019")
                 
                ],
              ),
            ),
            //  new RaisedButton(
            // //  onPressed: () => _task(context),
            //   child: new Row(
            //     children: <Widget>[
            //        new Icon(Icons.date_range),
            //       new Text("01 April 2019")
                 
            //     ],
            //   ),
            // ),

              ],
            ),
            
          ),
        ),
      ),
     
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.yellow,
          onPressed: () => _createNewProduct(context),
        ),
      ),
    );
  }
  void _createNewProduct(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ProductScreen(Product(null, '', '', '', '', '', ''))
              ),
    );
  }
  void _task(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              HomeMenu()
              ),
    );
  }

  
  
}
