import 'package:animationChallengeApp/models/app_info.dart';
import 'package:animationChallengeApp/models/place.dart';
import 'package:animationChallengeApp/models/trip.dart';
import 'package:animationChallengeApp/models/user.dart';
import 'package:animationChallengeApp/routes/app_routes.dart';

List<AppInfo> LISTAPPS = [
  AppInfo(
      text: 'Animations Challenge 01',
      imagePath: 'assets/images/animation01.png',
      routeName: AppRoutes.HOME),
];

List<User> LISTUSERS = [
  User(
      birthDate: DateTime.now(),
      fullName: 'Leonardo Palmeiro',
      imageSrc: 'https://randomuser.me/api/portraits/women/96.jpg'),
  User(
      birthDate: DateTime.now(),
      fullName: 'Leonardo Palmeiro',
      imageSrc: 'https://randomuser.me/api/portraits/men/96.jpg'),
  User(
      birthDate: DateTime.now(),
      fullName: 'Leonardo Palmeiro',
      imageSrc: 'https://randomuser.me/api/portraits/women/50.jpg'),
];
List<Trip> LISTTRIP = [
  Trip(
    title: 'Thailand',
    listPlaces: [
      Place(
          title: 'Photo 01',
          description: 'Description 01',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/11/03/04/02/buddhist-1793421_960_720.jpg'),
      Place(
          title: 'Photo 02',
          description: 'Description 02',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_960_720.jpg'),
    ],
  ),
  Trip(
    title: 'Laos',
    listPlaces: [
      Place(
          title: 'Photo 01',
          description: 'Description 01',
          imageUrl:
              'https://cdn.pixabay.com/photo/2014/09/27/17/30/kuang-si-falls-463925_960_720.jpg'),
      Place(
          title: 'Photo 02',
          description: 'Description 02',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/11/14/04/14/monks-1822569_960_720.jpg'),
    ],
  ),
];
