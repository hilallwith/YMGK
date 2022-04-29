import 'package:anaekran/kategori.dart';
import 'package:flutter/material.dart';

class KEsfet extends StatefulWidget {
  const KEsfet({Key? key}) : super(key: key);

  @override
  State<KEsfet> createState() => _KEsfetState();
}

class _KEsfetState extends State<KEsfet> with SingleTickerProviderStateMixin {
  late TabController kontrolcu;
  @override
  void initState() {
    super.initState();
    kontrolcu = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(controller: kontrolcu, 
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        labelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
        tabs: [
          Tab(
            child: Text("Tarihi Mekanlar"),
          ),
          Tab(
            child: Text("Fotograf Çekilecek Yerler"),
          ),
          Tab(
            child: Text("Parklar"),
          ),
          Tab(
            child: Text("Müzeler"),
          ),
          Tab(
            child: Text("Yürüyüş Yerleri"),
          ),
        ]),
        Expanded(
          
          child: TabBarView(controller: kontrolcu, children: [
           Kategori(kategori: "Tarihi Mekanlar",),
            Kategori(kategori: "Fotograf Çekilecek Yerler"),
             Kategori(kategori: "Parklar"),
            Kategori(kategori: "Müzeler"),
             Kategori(kategori: "Yürüyüş Yerleri"),
      
            
            
          ]),
        )
      ],
    );
  }
}
