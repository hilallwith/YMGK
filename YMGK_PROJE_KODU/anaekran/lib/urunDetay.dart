import 'package:flutter/material.dart';

class Urundetay extends StatelessWidget {
  final String ad;
  final String yer;
  final String resimyolu;
  final String aciklama;
  final String saat;
  final String saatAciklama;
  final String yabanciUcret;
  final String yabanciAciklama;
  final String yerliUcret;
  final String yerliAciklama;
  

  const Urundetay(
      {Key? key, required this.ad, required this.yer, required this.resimyolu, required this.aciklama, required this.saat, required this.saatAciklama, required this.yabanciUcret, required this.yabanciAciklama, required this.yerliUcret, required this.yerliAciklama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(
              tag: resimyolu,
              child: Image.network(resimyolu),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 63, 32, 30),
                  size: 40.0,
                ))
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              ad,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              yer,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text(
                 aciklama,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  "Detaylar ",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
          title: Text("Çalışma Saatleri"),
          subtitle:Text(saatAciklama) ,
          trailing: Text(saat),
        ),
         ListTile(
          title: Text("Yerli Ücret"),
          subtitle:Text(yerliAciklama) ,
          trailing: Text(yerliUcret),
        ),
         ListTile(
          title: Text("Yabancı Ücret"),
          subtitle:Text(yabanciAciklama) ,
          trailing: Text(yabanciUcret),
        ),
        SizedBox(height: 20.0),
          ],
        )
      ],
    ));
  }
}



