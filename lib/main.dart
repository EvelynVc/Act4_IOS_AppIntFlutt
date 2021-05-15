import 'package:flutter/material.dart';

void main() => runApp(MyIFApp());

class MyIFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Interactiva',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora de IS'),
          backgroundColor: Colors.indigo[900],
        ), //fin de App Bar

        body: Padding(
          padding: const EdgeInsets.all(2), //pading del body espacio blanco

          child: Container(
            //contenedor gris
            color: Colors.blueGrey[50],
            width: 360,

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
                ), //fin de el container foto

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
                ), //fin de container grupo especialidad

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
                    ), //fin de inoutdecoration
                  ), //fin de TextField
                ), //fin de container grupo especialidad

                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),

                  width: 1000,
                  height: 50,
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
                          ), //fin de inoutdecoration
                        ), //fin de TextField
                      ),
                      SizedBox(width: 16),
                      new DropdownButton<String>(
                        items: <String>[
                          '     Meses     ',
                          '     Años      '
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ), //fin de dropdown
                    ], //fin de widget
                  ), //fin de row
                ), //fin de container colores

                SizedBox(height: 5),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  width: 1000,
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
                                "Calcular",
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
                                "Borrar",
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
      ), //fin de Scaffold
    ); //fin de MaterialApp
  } //fin de widget
} //fin de MyifApp
