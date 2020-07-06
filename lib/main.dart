import 'package:animationChallengeApp/Animation01_component/animation01_main_screen.dart';
import 'package:animationChallengeApp/Animation02_component/animation02_main_screen.dart';
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
      title: 'Animation Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato',
              fontSize: 30),
          headline2: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
              fontSize: 20),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        AppRoutes.HOME: (context) => MyHomePage(
              title: 'Animation Challenge',
            ),
        AppRoutes.ANIMATION01: (context) => Animation01MainScreen(
              title: 'Animation 01 Challenge',
            ),
        AppRoutes.ANIMATION02: (context) => Animation02MainScreen(
              title: 'Animation 02 Challenge',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            centerTitle: true,
            expandedHeight: 300,
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  widget.title,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              background: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  'assets/images/code.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.ANIMATION01),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/01.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Animation 01 Challenge',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.ANIMATION02),
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/02.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Animation 02 Challenge',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.ANIMATION02),
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/03.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Animation 03 Challenge',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
