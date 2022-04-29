import 'package:flutter/material.dart';

class Detaylar extends StatelessWidget {
  
  


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Text(
          "Detaylar",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,

          ),
        )),
        ListTile(
          title: Text("Çalışma Saatleri"),
          subtitle:Text("akşam saatleri çalışmaz") ,
          trailing: Text("9.0-17.30"),
        ),
         ListTile(
          title: Text("Yerli Ücret"),
          subtitle:Text("çğrenci ve öğretmenlere ücretsizdir.") ,
          trailing: Text("12"),
        ),
         ListTile(
          title: Text("Yabancı Ücret"),
          subtitle:Text("Yabancı para birimi ile satış yapılmaz") ,
          trailing: Text("50 TL"),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text("Bizi Ziyaret ettiğimn için çok teşekkürler",style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,)),
                  SizedBox(height: 5.0),
                   Text("********",style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,))

                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: Container(
           height: 45.0,
           
           decoration: BoxDecoration(
             color: Colors.red,
             borderRadius: BorderRadius.circular(10.0),
             

             
             ),
             child:  Center(
               child: Text("Favorilere Ekle",style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,)),
             ),
         ),
       )
      ],
    );
  }
}
