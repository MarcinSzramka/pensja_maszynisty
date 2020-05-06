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
                    Text("Parametr 1:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Text("Parametr 2:"),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),


            ]
          )
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