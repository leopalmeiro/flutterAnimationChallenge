import 'package:animationChallengeApp/models/place.dart';
import 'package:flutter/material.dart';

class Trip {
  String title;
  List<Place> listPlaces;
  
  Trip({@required this.title, @required this.listPlaces});
}