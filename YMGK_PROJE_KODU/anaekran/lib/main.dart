

import 'package:anaekran/anasayfaKesfet.dart';
import 'package:anaekran/kesfet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();

}
class _AnasayfaState extends State<Anasayfa> {
  int _aktificerikNo=0;
 late  List<Widget?>_icerikler;
  @override
  void initState() {
    super.initState();
    _icerikler=[
    KEsfet(),
    AnasayfaKesfet()
      
    
 
   
    ];
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Gezi Rehberi",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _icerikler[_aktificerikNo],
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktificerikNo,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "ANASAYFA",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "KEŞFET",
              backgroundColor: Colors.black),
             
        ],
        onTap: (int tiklananButtonPozisyonu){
    setState(() {
     _aktificerikNo=tiklananButtonPozisyonu;  
    });


        },
        
      ),
      
    );
  }
}

class Kesif {
}

class Kesfedilecekler {
}
