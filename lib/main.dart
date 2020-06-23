import 'package:animationChallengeApp/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        AppRoutes.HOME: (context) => MyHomePage(
              title: 'Animations Chalenges',
            )
      },
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
  Color _colors = Colors.greenAccent;

  void _setHeaderColor() {
    setState(() {
      _colors = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            //title: Text(widget.title),
            centerTitle: true,
            expandedHeight: 300,
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: _colors,
            onStretchTrigger: () async {
              print('object');
              setState(() {
                _colors = Colors.redAccent;
              });
            },
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  widget.title,
                  style: TextStyle(color: _colors),
                ),
              ),
              background: Image.asset(
                'assets/images/code.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ])),
        ],
      ),
    );
  }
}
