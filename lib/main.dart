import 'package:flutter/material.dart';

void main() => runApp(MyIFApp());

class MyIFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IS',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    ); //Fin MaterialApp
  } //Fin de widget
} //fin de MyifApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() {
    return _PaginaInicioState();
  }
} //Fin Statefulwidget

class _PaginaInicioState extends State<PaginaInicio> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IS'),
      ), //fin de App Bar

      body: Padding(
        padding: const EdgeInsets.all(1.5), //pading del body espacio blanco

        child: Container(
          //contenedor gris
          color: Colors.blueGrey[50],
          //aqui

          padding: const EdgeInsets.all(10), //pading del body espacio blanco

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 170,
                width: 572,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),

                  image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/EvelynVc/mis_imagenes/main/IS.jpg'), alignment: Alignment.topCenter),
                  border: Border.all(
                    color: Colors.teal[300],
                    width: 2.0,
                  ), //fin de border
                ), //fin de el decoration box
              ), //fin de el container

              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Capital Inicial',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal[300],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inoutdecoration
                ), //fin de TextField
              ), //fin de container

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Tipo de interes',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal[300],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Tiempo',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal[300],
                              width: 2.0,
                            ), //fin de border side
                          ), //fin de enable border
                          //! Change the Focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber,
                              width: 3.0,
                            ), //fin de bordersize
                          ), //fin de outlineInput border
                        ), //fin de inputdecoration
                      ), //fin de TextField
                    ),
                    SizedBox(width: 16),
                    new DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('Meses'),
                          value: 'one',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Dias'),
                          value: 'two',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Años'),
                          value: 'three',
                        ),
                      ],
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text('Selecciona'),
                      value: _value,
                    ), //fin de dropdown
                  ], //fin de widget
                ), //fin de row
              ), //fin de container

              SizedBox(height: 5),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.indigoAccent[700],
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "CALCULAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.amber,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "BORRAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.indigo[900]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //fin de widget
                ), //fin de row
              ), //fin de container colores
            ], //fin de widget2[]
          ), //fin de column
        ), //child container
      ), //fin de body padding
    ); //Fin Scaffold
  } //Fin de Widget
} //Fin _PaginaInicioState
