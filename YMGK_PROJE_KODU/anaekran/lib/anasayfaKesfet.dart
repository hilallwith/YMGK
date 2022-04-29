import 'package:flutter/material.dart';


import 'package:anaekran/gonderikarti.dart';
import 'package:anaekran/profilsayfasi.dart';

class AnasayfaKesfet extends StatefulWidget {
  const AnasayfaKesfet({ Key? key }) : super(key: key);

  @override
  State<AnasayfaKesfet> createState() => _AnasayfaKesfetState();
}

class _AnasayfaKesfetState extends State<AnasayfaKesfet> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 215, 215),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 229, 207, 207),
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 32.0,
              color: Colors.grey,
            )),
        title: Text(
          "SosyalGezi",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {

                showModalBottomSheet(context: context, builder: (BuildContext context){
return Column(
  children: [
    duyuru("Kamil seni takip etti","2 gün önce"),
    duyuru("Seda gönderine yorum yaptı","3 gün önce"),
    duyuru("Cüneyt mesaj gönderdi","1 gün önce"),
  ],
);
                });
              },
              icon: Icon(
                Icons.notifications,
                size: 32.0,
                color: Color.fromARGB(255, 146, 95, 155),
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 215, 215),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0,
                  )
                ]),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                  "KakTüs",
                  "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg",
                  "KakTüs", "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg"
                ),
                profilKartiOlustur("İnciProfit", "https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg",
                  "İnciProfit", "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg"),
                profilKartiOlustur("Ahmet Usta",  "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg",
                  "Sütçü Ahmet Ustanın Yeri", "https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg"),
                  profilKartiOlustur(
                  "Viyana Kahvecisi",
                  "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg",
                  "Gökçe Hilal Tunç", "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg"
                ),
                profilKartiOlustur("Ara Kafe", "https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg",
                  "Ara Kafe ", "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg"),
                profilKartiOlustur("Aylin",  "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg",
                  "Zencefil", "https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg"),

                
              ],
            ),
          ),
          SizedBox(height: 12.0),
          GonderiKarti(
            ProfilResmiLinki:
                "https://cdn.pixabay.com/photo/2019/09/12/18/29/street-cafe-4472312_960_720.jpg",
            isimsoyad: "KakTüs",
            GecenSure: "1 saat",
            aciklama: "bu havada güzel bir waffle yenir",
            gonderiResmiLinki:
                "https://media.istockphoto.com/photos/fresh-breakfast-with-blueberry-strawberry-and-raspberry-ricotta-rye-picture-id1255462814?s=612x612",
          ),
          GonderiKarti(
            ProfilResmiLinki:
                "https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg",
            isimsoyad: "Sütçü Ahmet Ustanın Yeri",
            GecenSure: "1 saat",
            aciklama: "Ünlü muzlu sahleplerimiz çıktı koşunn...",
            gonderiResmiLinki:
                "https://media.istockphoto.com/photos/banana-smothie-or-milkshake-with-cinnamon-on-wood-background-picture-id1152515416?s=612x612",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      backgroundColor: Color.fromARGB(255, 202, 146, 212),
      child: Icon(Icons.add_a_photo,color: Colors.white,),),
    );

  }

  Padding duyuru(String mesaj,String sure) {
    return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(mesaj,style: TextStyle(fontSize: 18.0),),
        Text(sure),
      ],
    ),
  );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimsoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
        bool veri=await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimLinki: resimLinki,
                    kullaniciadi: kullaniciAdi,
                    isimsoyad: isimsoyad,
                    kapakresimLinki: kapakResimLinki,
                  )));
                if(veri){
                  print("kullanıcı profil sayfasından döndü");
                }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                            image: NetworkImage(resimLinki), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(kullaniciAdi,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}