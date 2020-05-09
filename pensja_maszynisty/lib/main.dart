import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pensja Maszynisty',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pensja Maszynisty'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
// <==============2.STRONA==================>
class SecondRoute extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  var var1;
  var var2;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wprowadź dane:"),
      ),
      body: ListView(
        children:<Widget>[

           Form(
            key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Norma godzin:"),
                    TextFormField(

                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz normę godzin !';
                        }
                        return null;
                      },
                    ),
                    Text("Podstawa wynagrodzenia brutto:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz podstewę wynagrodzenia !';
                        }
                        return null;
                      },
                    ),
                    Text("Premia regulaminowa:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz kwotę premii regulaminowej:';
                        }
                        return null;
                      },
                    ),
                    Text("Godziny urlopowe:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę godzin urlopowych !';
                        }
                        return null;
                      },
                    ),
                    Text("Liczba godzin 'nocnych' (21-7)"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę godzin nocnych !';
                        }
                        return null;
                      },
                    ),
                    Text("Liczba godzin przepracowanych w niedzielę:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę godzin nprzepracowanych w niedzielę !';
                        }
                        return null;
                      },
                    ),
                    Text("Liczba nadgodzin w dniach roboczych:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę nadgodzin w dniach roboczych !';
                        }
                        return null;
                      },
                    ),
                    Text("Liczba nadgodzin w święta:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę nadgodzin w święta!';
                        }
                        return null;
                      },
                    ),

                    Text("Liczba godzin w których prowadziłeś pojazd w pojedynke:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę godzin w których prowadziłeś pojazd w pojedynke!';
                        }
                        return null;
                      },
                    ),
                    Text("Ilość przejechanych szybkich kilometrów :"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz ilość przejechanych szybkich kilometrów!';
                        }
                        return null;
                      },
                    ),
                    Text("Ilość przejechanych szybkich kilometrów :"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz ilość przejechanych szybkich kilometrów!';
                        }
                        return null;
                      },
                    ),
                    Text("Liczba godzin przepracowanych w warunkach ucążliwych:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę godzin przepracowanych w warunkach ucążliwych!';
                        }
                        return null;
                      },
                    ),
                    Text("ilość służb manewrowych w których manewry wynosiły więcej niż 80% służby:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz liczbę godzin przepracowanych w warunkach ucążliwych!';
                        }
                        return null;
                      },
                    ),
                    Text("Dodatek stażowy:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Wpisz dodatek stażowy!';
                        }
                        return null;
                      },
                    ),


            ]
          )
          ),
          ButtonBar(
            buttonHeight: MediaQuery.of(context).size.height*0.1,
            children: <Widget>[FlatButton(

              child: Text('Pokaż wynik'),
              color: Color(0xFF0D47A1),
              textColor: Colors.white70,
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultRoute()),
                );
              },
            ),],

          )



        ]
       ),

    );
  }
}

//<=================1.STRONA===============>

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
            children: <Widget>[
            CarouselSlider(
              height: MediaQuery.of(context).size.height*0.24,
              autoPlay:true,
              initialPage: 0,
              autoPlayCurve: Curves.easeInQuad,
              autoPlayInterval: Duration(seconds: 1),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              items: <Widget>[
                Image.asset('assets/images/pendolino.jpg', height: MediaQuery.of(context).size.height*0.5),
              ],

            ),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.13,
              child:RaisedButton(
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                textColor: Colors.deepOrange,
                //height:
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF29B6F6),
                      ],
                    ),
                  ),

                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                      'Oblicz swoją pensję',
                      style: TextStyle(fontSize: 15)
                  ),
                ),
              ),
            ),

              CarouselSlider(
                height: MediaQuery.of(context).size.height*0.24,
                autoPlay:true,
                initialPage: 0,
                autoPlayCurve: Curves.easeInQuad,
                autoPlayInterval: Duration(seconds: 1),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                items: <Widget>[
                  Image.asset('assets/images/ep071.png', height: MediaQuery.of(context).size.height*0.5),
                ],

              ),
              ButtonBar(
                buttonHeight: MediaQuery.of(context).size.height*0.1,
                children: <Widget>[FlatButton(

                  child: Text('O programie'),
                  color: Color(0xFF0D47A1),
                  textColor: Colors.white70,
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreditsRoute()),
                    );
                  },
                ),],

              )





            // ),

          //  ),

          ]





        ),

      ),

    );

  }
}
//<================credits route==================>
class CreditsRoute extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O programie:"),
      ),
      body: Text(
        'Witaj użytkowniku !',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      )

    );
  }
}

//<================formularz wynikowy==================>
class ResultRoute extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("O programie:"),
        ),
        body: Text(
          'Formularz wynikowy!',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        )

    );
  }
}