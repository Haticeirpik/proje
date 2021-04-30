
import 'package:flutter/material.dart';
import 'package:proje/hakkında.dart';
import 'package:proje/login.dart';
import 'package:proje/soru_veri.dart';
import 'constants.dart';

void main() => runApp(BilgiSorulari());

class BilgiSorulari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/giris',
        routes: {
          '/giris':(context) => GirisSayfasi(),
        '/sorular': (context) => SoruSayfasi(),
        '/hakkında': (context)=> Hakkinda(), },

        home: Scaffold(
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {

  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List <Widget> secimler =[];
  SoruVeri etkinlik_1= SoruVeri();

 void butonFonksiyonu(bool secilenButon) {
   if (etkinlik_1.sorularBittiMi() == true) {
     showDialog(
         context: context,
         builder: (BuildContext context) {
           return AlertDialog(
             content: new Text("TEBRİKLER, SORULAR BİTMİŞTİR..!"),
             elevation: 100.0,
             backgroundColor: Colors.redAccent,
             actions: <Widget>[
               new ElevatedButton(
                   child: new Text("HAKKINDA"),
                   onPressed: () {
                     Navigator.pushNamed(context, '/hakkında');

                     setState(() {
                       etkinlik_1.sorulariSifirla();
                       secimler = [];
                     });
                   }
               )
             ],
           );

         }
     );
   }
    else{
    }
    setState(() {
      etkinlik_1.getsoruyaniti() ==secilenButon ?secimler.add(kDogruIconu):secimler.add(kYanlisIconu);
      etkinlik_1.sonrakiSoru();

    });
  }
  @override

  Widget build(BuildContext context) {
     return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Center(
                      child: Text(
                       etkinlik_1.getsorumetni(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

               Wrap(
                 spacing: 30,
                 runSpacing: 15,
                 children: secimler,
               ),

                Expanded(
                  flex: 10,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton(
                                 child: Icon(Icons.thumb_down, size: 100.0,
                                   color: Colors.red,),
                                  onPressed: () {
                                    butonFonksiyonu(false);{
                                    }
    }),
                                    )),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton(
                                  child: Icon(Icons.thumb_up, size: 100.0,
                                  color: Colors.green,),
                                  onPressed: () {
                                    butonFonksiyonu(true);{
                                    }
    }
     ),

    ))
    ]
    ),

    ),
    ) ]);

  }

}

