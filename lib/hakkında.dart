import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}
class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
        appBar: AppBar(
        title: Text ('HAKKINDA',
            textAlign: TextAlign.center),

        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                width: 350,
                height: 150,
                color: Colors.purpleAccent,
                alignment: Alignment.center,
                child: Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir Çınar tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173004052 numaralı HATİCE İRPİK tarafından 30 Nisan 2021 günü yapılmıştır'),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: ElevatedButton(
                      onPressed:(){
                        Navigator.pushNamed(context,'/giris') ;
                      },
                    child: Text('GİRİŞE DÖN'),
                  )


              )
            ],
          ),

        ),
      ),

    );
  }
  }

