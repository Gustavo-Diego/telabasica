import 'package:flutter/material.dart';

  MinhaPagina(){
    return Scaffold(
      appBar: AppBar (
        title: Text("minha página"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
      ),
      drawer: Container(
        color: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: (){},
      ),
      bottomNavigationBar: BottomAppBar(
        child:Container(
          height: 60,
          child: Row(
            children: <Widget> [
              Text("meu app bar botton"),
              Icon(Icons.home)
            ],
          ),
        ),
        color: Colors.lightGreen,
      ),
      persistentFooterButtons: <Widget>[
        IconButton(icon: Icon(Icons.access_alarm),
         onPressed: null)
      ],
    );
  }