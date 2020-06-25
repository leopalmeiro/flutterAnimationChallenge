import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Animation01MainScreen extends StatefulWidget {
  final String title;
  Animation01MainScreen({@required this.title});

  @override
  _Animation01MainScreenState createState() => _Animation01MainScreenState();
}

class _Animation01MainScreenState extends State<Animation01MainScreen>
    with SingleTickerProviderStateMixin {
  final SwiperController _swiperController = SwiperController();
  AnimationController _animationController;
  int _current = 0;
  int _itemCount = 3;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
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
      } else if (index == _itemCount - 1) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Text(
              'Thailand',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Swiper(
                controller: _swiperController,
                onIndexChanged: (index) => _showDescr(index),
                loop: true,
                itemCount: _itemCount,
                viewportFraction: 0.8,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/code.png'),
                        SizedBox(
                          height: 10,
                        ),
                        AnimatedOpacity(
                          opacity: _current == index ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          child: Text(
                            'Begin',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
