import 'package:anaekran/urunDetay.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key? key, required this.kategori}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;

  @override
  void initState() {
    if (widget.kategori == "Tarihi Mekanlar") {
      gosterilecekListe = <Widget>[
        kategoriKarti("Kız Kulesi", "Üsküdar",
            "https://cdn.pixabay.com/photo/2020/02/23/12/22/river-4873198_960_720.jpg","kız kulesi deniz üstündedir",
            "9.0-15.30","Haftasonları 20.00 kadar açıktır","15","öğrencilere ve öğretmenlere ücretsiz",
            "35","Yabancı para birimi ile bilet satın alınmaz"
            
            
            ),


        kategoriKarti("Dolmabahçei", "Beşiktaş",
            "https://media.istockphoto.com/photos/dolmabahce-palace-picture-id509113097", "Bu yenileşme rüzgârının ortaya çıkardığı en görkemli eser ise bugün İstanbul'un en büyük üçüncü saray yapısı olma ünvanına da sahip olan Dolmabahçe Sarayı'dır.İçerisinde eşsiz eserler barındırmaktadır.Ayrıca Atatürkün öldüğü odayıda görebilirsiniz. Eşsiz boğaz manzarası ile içindeki ünlü kafelerde kahve içebilir ve fotoğraf çekilebilirsiniz.  ",
            "09.00-17.00","Haftasonları 19.00 kadar açıktır","100","Yabancı para birimi ile bilet satın alınmaz","35","öğrencilere ve öğretmenlere ücretsiz"
            
            ),
             kategoriKarti("SultanAhmet Cami", "Fatih",
            "https://media.istockphoto.com/photos/sultan-ahmed-mosque-or-the-blue-mosque-in-istanbul-one-of-the-most-picture-id1179400493?s=612x612", "Atatürk burada vefat etmiştir.",
            "09.00-15.00","Haftasonları 20.00 kadar açıktır","15","öğrencilere ve öğretmenlere ücretsiz","35","Yabancı para birimi ile bilet satın alınmaz"
            
            ),
            

      ];
      

    } else if (widget.kategori == "Fotograf Çekilecek Yerler") {
      gosterilecekListe = <Widget>[
         kategoriKarti("Kız Kulesi", "Üsküdar",
            "https://cdn.pixabay.com/photo/2020/02/23/12/22/river-4873198_960_720.jpg","Hem yerli hem yabancı bir çok turistin ve İstanbul’da yaşayanların ilgisini çeken Kız Kulesi oldukça rağbet görüyor. Tüm İstanbul tarihine tanıklık eden kule yolculuk şekli, atmosferi ve çevresindeki gezilecek yerleri ile de hoş vakitler ve anılar vaat ediyor. İstanbul Salacak açıklarındaki ada’nın üzerine inşa edilmiş olan kız kulesi efsanelere konu olmaktadır. ",
            "35","Yabancı para birimi ile bilet satın alınmaz",
            "9.0-15.30","Haftasonları 20.00 kadar açıktır","15","öğrencilere ve öğretmenlere ücretsiz",
            
            
            
            ),



        kategoriKarti("Dolmabahçei", "Beşiktaş",
            "https://media.istockphoto.com/photos/dolmabahce-palace-picture-id509113097", "Atatürk burada vefat etmiştir.",
            "09.00-15.00","Haftasonları 20.00 kadar açıktır","15","öğrencilere ve öğretmenlere ücretsiz","35","Yabancı para birimi ile bilet satın alınmaz"),
        
       
      ];
    } else if (widget.kategori == "Parklar") {
      gosterilecekListe = <Widget>[
        kategoriKarti("Dolmabahçei", "Beşiktaş",
            "https://media.istockphoto.com/photos/dolmabahce-palace-picture-id509113097", "Bu yenileşme rüzgârının ortaya çıkardığı en görkemli eser ise bugün İstanbul'un en büyük üçüncü saray yapısı olma ünvanına da sahip olan Dolmabahçe Sarayı'dır.İçerisinde eşsiz eserler barındırmaktadır.Ayrıca Atatürkün öldüğü odayıda görebilirsiniz. Eşsiz boğaz manzarası ile içindeki ünlü kafelerde kahve içebilir ve fotoğraf çekilebilirsiniz.  ",
            "09.00-15.00","Haftasonları 20.00 kadar açıktır","15","öğrencilere ve öğretmenlere ücretsiz","35","Yabancı para birimi ile bilet satın alınmaz"),
       
      ];
    } else if (widget.kategori == "Müzeler") {
      gosterilecekListe = <Widget>[
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.amber,
        ),
      ];
    } else if (widget.kategori == "Yürüyüş Yerleri") {
      gosterilecekListe = <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.amber,
        ),
      ];
    }

    super.initState();
  }

  Widget kategoriKarti(String isim, String yer, String resimyolu,String aciklama,
   String saat, String saatAciklama, String yabanciUcret,   String yabanciAciklama, String yerliUcret, String yerliAciklama,
  
  ) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Urundetay(
          ad: isim,yer: yer,resimyolu: resimyolu,aciklama: aciklama,
          saat: saat,saatAciklama: saatAciklama,
          yabanciUcret: yerliUcret,yerliAciklama: yerliAciklama,
          yerliUcret: yabanciUcret,yabanciAciklama: yabanciAciklama,

        )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimyolu,
              child: Container(
                width: 330.0,
                height: 240.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimyolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 218, 199, 199),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              yer,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 218, 199, 199),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 1,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        padding: EdgeInsets.all(10.0),
        childAspectRatio: 1,
        children: gosterilecekListe);
  }
}
