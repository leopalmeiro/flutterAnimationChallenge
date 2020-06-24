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
  bool _showDescription = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void _showDescr() {
    print('object');
    setState(() {
      _showDescription = !_showDescription;
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
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              'Thailand',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              height: 300,
              child: Swiper(
                controller: _swiperController,
                onIndexChanged: (index) => _showDescr(),
                loop: true,
                itemCount: 3,
                viewportFraction: 0.8,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/code.png'),
                        SizedBox(
                          height: 15,
                        ),
                        AnimatedOpacity(
                          onEnd: () => {
                            setState(() {
                              _showDescription = false;
                            })
                          },
                          opacity: _showDescription ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          child: Text('Begin'),
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
