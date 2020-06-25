import 'package:animationChallengeApp/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PlaceComponent extends StatefulWidget {
  final List<Place> listPlace;
  PlaceComponent({@required this.listPlace});

  @override
  _PlaceComponentState createState() => _PlaceComponentState();
}

class _PlaceComponentState extends State<PlaceComponent>
    with SingleTickerProviderStateMixin {
  final SwiperController _swiperController = SwiperController();
  AnimationController _animationController;
  int _current = 0;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void _showDescr(index) {
    setState(() {
      if (index == 0) {
        _current = 0;
      } else if (index == widget.listPlace.length - 1) {
        _current = index;
      } else if (index >= _current) {
        _current++;
      } else {
        _current--;
      }

      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      controller: _swiperController,
      onIndexChanged: (index) => _showDescr(index),
      loop: true,
      itemCount: widget.listPlace.length,
      viewportFraction: 0.8,
      scale: 0.8,
      itemBuilder: (context, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 5,
          margin: EdgeInsets.all(10.0),
          child: Container(
            height: 500,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 180,
                    margin: EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        widget.listPlace[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: AnimatedOpacity(
                    opacity: _current == index ? 1 : 0,
                    duration: const Duration(milliseconds: 1300),
                    child: Text(
                      widget.listPlace[index].title,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
