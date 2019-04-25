import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:cfm/model/product.dart';
//nuevo para imagenes
import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:date_format/date_format.dart';

File image;
String filename;

class ProductScreen extends StatefulWidget {
  final Product product;
  ProductScreen(this.product);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

// final productReference = FirebaseDatabase.instance.reference().child('product');

class _ProductScreenState extends State<ProductScreen> {



  List<Product> items;

  TextEditingController _nameController;
  TextEditingController _codebarController;
  TextEditingController _descriptionController;
  TextEditingController _priceController;
  TextEditingController _stockController;
  
   //nuevo imagen
  String productImage;

  pickerCam() async {
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    // File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  pickerGallery() async {
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    // File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }
  
  // Widget divider() {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
  //     child: Container(
  //       width: 0.8,
  //       color: Colors.black,
  //     ),
  //   );
  // }
  //fin nuevo imagen

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = new TextEditingController(text: widget.product.name);
    _codebarController = new TextEditingController(text: widget.product.codebar);
    _descriptionController = new TextEditingController(text: widget.product.description);
    _priceController = new TextEditingController(text: widget.product.price);
    _stockController = new TextEditingController(text: widget.product.stock);
    productImage = widget.product.productImage;
    print(productImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
       
        //height: 570.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // new Container(
                    //   height: 100.0,
                    //   width: 100.0,
                    //   decoration: new BoxDecoration(
                    //       border: new Border.all(color: Colors.blueAccent)),
                    //   padding: new EdgeInsets.all(5.0),
                    //   child: image == null ? Text('Add') : Image.file(image),                      
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 2.2),
                    //   child: new Container(
                    //     height: 100.0,
                    //     width: 100.0,
                    //     decoration: new BoxDecoration(
                    //         border: new Border.all(color: Colors.blueAccent)),
                    //     padding: new EdgeInsets.all(5.0),
                    //     child: productImage == '' ? Text('Edit') : Image.network(productImage+'?alt=media'),
                    //   ),
                    // ),
                    // Divider(),
                    // //nuevo para llamar imagen de la galeria o capturarla con la camara
                    // new IconButton(
                    //     icon: new Icon(Icons.camera_alt), onPressed: pickerCam),
                    // Divider(),
                    // new IconButton(
                    //     icon: new Icon(Icons.image), onPressed: pickerGallery),
                  ],
                ),
                 
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Divider(),
                TextField(
                  controller: _codebarController,
                  style:
                      TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(
                       labelText: 'Property'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                Divider(),
                TextField(
                  controller: _descriptionController,
                  style:
                      TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(
                      labelText: 'Floor'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Divider(),
                TextField(
                  controller: _priceController,
                  style:
                      TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(
                       labelText: 'Zone'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Divider(),
                TextField(
                  controller: _stockController,
                  style:
                      TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(
                       labelText: 'Category'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Divider(),
                TextField(
                  controller: _stockController,
                  style:
                      TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                      maxLines: 3,
                  decoration: InputDecoration(
                       labelText: 'Detail'),
                ),
               
                 Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Divider(),
                new Align(alignment: Alignment.centerLeft, child:  new Text(
                      'Photo',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        
                      ),
                    ),
                 ),
                    Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                 
                 Row(
                  children: <Widget>[
                    new Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.blueAccent)),
                      padding: new EdgeInsets.all(5.0),
                      child: image == null ? Text('Add') : Image.file(image),                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.2),
                      child: new Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: new BoxDecoration(
                            border: new Border.all(color: Colors.blueAccent)),
                        padding: new EdgeInsets.all(5.0),
                        child: productImage == '' ? Text('Edit') : Image.network(productImage+'?alt=media'),
                      ),
                    ),
                    
                    //nuevo para llamar imagen de la galeria o capturarla con la camara
                    new IconButton(
                        icon: new Icon(Icons.camera_alt), onPressed: pickerCam),
                    Divider(),
                    new IconButton(
                        icon: new Icon(Icons.image), onPressed: pickerGallery),


                //           Padding(
                //   padding: EdgeInsets.only(top: 8.0),
                // ),
                // Divider(),

                // new Radio( Value: 0 groupValue: _radioValue1, onChanged : _handleRadioValueChange1,)
                // new Text('Carnivore', new TextStyle(fontSize: 16.0))
                
                  ],

                ),
                  Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Divider(),
                new Align(alignment: Alignment.centerLeft, child:  new Text(
                      'On Behalf',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    )),
                
                 new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        new Radio(
                          // value: 0,
                          // groupValue: _radioValue1,
                          // onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'My Self',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          // value: 1,
                          // groupValue: _radioValue1,
                          // onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Others',
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        // new Radio(
                        //   // value: 2,
                        //   // groupValue: _radioValue1,
                        //   // onChanged: _handleRadioValueChange1,
                        // ),
                        // new Text(
                        //   'Omnivore',
                        //   style: new TextStyle(fontSize: 16.0),
                        // ),
                      ],
                    ),
                
                Padding(
                  padding: EdgeInsets.only(top: 1.0),
                ),
                Divider(), 
//                 new RaisedButton(
//   child: new Text('Play!'),
//   color: Colors.blue,
// ),
//  FlatButton(
//           color: Theme.of(context).primaryColor,
//           onPressed: () => null,
//           child: Text("Phone"),
//         ),

                               FlatButton(
                     color: Theme.of(context).primaryColor,
          onPressed: () => null,
          child: Text("Save"),
           padding: EdgeInsets.all(6),
           
                    // child: (widget.product.id != null)
                    //     ? Text('Update')
                    //     : Text('Add')
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
