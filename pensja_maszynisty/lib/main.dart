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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
            children: <Widget>[
            CarouselSlider(
              height: 100,
              autoPlay:true,
              initialPage: 0,
              autoPlayCurve: Curves.easeInQuad,
              autoPlayInterval: Duration(seconds: 1),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              items: <Widget>[
                Image.asset('assets/images/pendolino.jpg', width: 200.0, height: 200.0),
              ],

            ),

              const SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                      'Oblicz swoją pensję',
                      style: TextStyle(fontSize: 20)
                  ),
                ),
              ),

              CarouselSlider(
                height: 100,
                autoPlay:true,
                initialPage: 0,
                autoPlayCurve: Curves.easeInQuad,
                autoPlayInterval: Duration(seconds: 1),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                items: <Widget>[
                  Image.asset('assets/images/ep071.png', width: 200.0, height: 200.0),
                ],

              ),
              ButtonBar(
                children: <Widget>[FlatButton(
                  child: Text('O programie'),
                  color: Colors.blue,
                  onPressed: () {/** */},
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
