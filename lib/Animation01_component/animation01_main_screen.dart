import 'package:animationChallengeApp/Animation01_component/place_component.dart';
import 'package:animationChallengeApp/models/dummy_data.dart';
import 'package:flutter/material.dart';

class Animation01MainScreen extends StatefulWidget {
  final String title;
  Animation01MainScreen({@required this.title});

  @override
  _Animation01MainScreenState createState() => _Animation01MainScreenState();
}

class _Animation01MainScreenState extends State<Animation01MainScreen> {
  final List _listTrip = LISTTRIP;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: _listTrip.length,
        itemBuilder: (context, index) {
          return Container(
            height: 320,
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  _listTrip[index].title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: PlaceComponent(listPlace: _listTrip[index].listPlaces),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
