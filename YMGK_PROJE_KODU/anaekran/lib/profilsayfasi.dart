import 'package:flutter/material.dart';
import 'package:anaekran/gonderikarti.dart';
import 'package:anaekran/main.dart';

class ProfilSayfasi extends StatelessWidget {

final String isimsoyad;
final String kullaniciadi;
final String kapakresimLinki;
final String profilResimLinki;

  const ProfilSayfasi({Key? key, required this.isimsoyad,  required this.kullaniciadi, required this.kapakresimLinki, required this.profilResimLinki}) : super(key: key);







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 215, 215),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230.0,
                  //color: Colors.yellow,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          kapakresimLinki),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: kullaniciadi,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                 profilResimLinki),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(60.0),
                          color: Colors.brown,
                          border: Border.all(width: 2.0, color: Colors.white)),
                    ),
                  ),
                ),
                Positioned(
                  top: 190.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       isimsoyad,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        kullaniciadi,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "Takip Et",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context,true);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              
              height: 75.0,
              color: Colors.grey.withOpacity(0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi Sayısı","20K"),
                  sayac("Takip","500K"),
                  sayac("Paylaşım","10")
                ],
              ),
            ),
             GonderiKarti(ProfilResmiLinki:"https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg" ,
          isimsoyad: "Aleyna Şahin",
          GecenSure: "1 saat",
          aciklama: "bu havada güzel bir sarma yenir",
          gonderiResmiLinki: "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg",
          ),
          ],
        ));
  }

  Column sayac(String baslik,String sayi) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sayi,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Text(
                      baslik,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                );
  }
}
