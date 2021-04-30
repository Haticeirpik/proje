import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title:'SORULARLA ÖĞREN',
      theme: ThemeData(
        primarySwatch: Colors.purple,
    ),
    );
  }
  }
class GirisSayfasi extends StatefulWidget {

  @override
  _GirisSayfasiState createState() =>new _GirisSayfasiState();
}
class _GirisSayfasiState extends State<GirisSayfasi>{

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text('ADINIZ VE SOYADINIZ:'),
        Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'ADINIZI VE SOYADINIZI GİRİNİZ',),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
            ),
        ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: ElevatedButton(
                  child: Text('BAŞLA'),
                  onPressed: () {
                    Navigator.pushNamed(context,'/sorular');
          },


            ))],
      )
      )
    );
  }

}


