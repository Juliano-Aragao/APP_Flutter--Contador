import 'Package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      title: " Contador de Pessoas",
      home: Home() ) );
}
//****************************//**********************//**********************
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
// digitando stful   o futter já cria a class completa
class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = " Let Us Counter  !";

  void _chanfePeople ( int delta){
    setState(() {
      _people += delta;
      if(_people <1) {
        _infoText = " Empty !";
      }else if(_people >= 20){
        _infoText = " keep going ";

      }

    });

  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/porta-3.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center, //  alinahmento
          children: <Widget>[
            Text(
              'Whitcom Counter:$_people',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),



            // botão
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 70, 10, 70),
                  child: FlatButton(
                      onPressed: () {
                        _chanfePeople(1);
                      },
                      child: Text(
                        "In  + 1 ",
                        style: TextStyle(fontSize: 45.0, color: Colors.white),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 70, 10, 70),
                  child: FlatButton(
                      onPressed: () {
                        _chanfePeople(-1);
                         },
                      child: Text(
                        " out - 01",
                        style: TextStyle(fontSize: 45.0, color: Colors.white),
                      )),
                ),
              ],
            ),

            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],

    );
  }
}
