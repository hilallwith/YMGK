
import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
      final String ProfilResmiLinki;
      final String isimsoyad;
      final String GecenSure;
      final String gonderiResmiLinki;
      final String aciklama;

  const GonderiKarti(
    { required this.ProfilResmiLinki, required this.isimsoyad, required this.GecenSure, required this.gonderiResmiLinki, required this.aciklama});

      





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(
                                    ProfilResmiLinki),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimsoyad,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            GecenSure,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(aciklama,
                  style: TextStyle(color: Colors.grey, fontSize: 18.0)),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
                gonderiResmiLinki,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconluButonum(ikonum: Icons.favorite,yazi:"Beğen",fonksiyonum: (){print("Beğen");},),
                   IconluButonum(ikonum: Icons.comment,yazi:"Yorum",fonksiyonum: (){print("Yorum");},),
              

                 FlatButton.icon(onPressed: (){}, icon: Icon(Icons.share,color: Colors.grey,), label: Text("Paylaş",
                 style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconluButonum extends StatelessWidget {

final IconData ikonum;
final String yazi;
final fonksiyonum;

const IconluButonum({required this.ikonum, required this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
               ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
