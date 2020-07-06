import 'package:animationChallengeApp/models/dummy_data.dart';
import 'package:animationChallengeApp/models/user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class Animation02MainScreen extends StatefulWidget {
  final title;

  Animation02MainScreen({@required this.title});
  @override
  _Animation02MainScreenState createState() => _Animation02MainScreenState();
}

class _Animation02MainScreenState extends State<Animation02MainScreen> {
  List<User> _list = LISTUSERS;

  GlobalKey<AnimatedListState> _listkey = GlobalKey<AnimatedListState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.add(
              new User(
                  fullName: 'Name ${_list.length}',
                  birthDate: DateTime.now(),
                  imageSrc: 'https://randomuser.me/api/portraits/women/' +
                      Random().nextInt(100).toString() +
                      '.jpg'),
            );
            _listkey.currentState.insertItem(_list.length - 1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: AnimatedList(
        key: _listkey,
        initialItemCount: _list.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                .animate(animation),
            child: Container(
              margin: EdgeInsets.all(5),
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_list[index].imageSrc),
                  ),
                  title: Text(_list[index].fullName),
                  subtitle: Text(
                    DateFormat('dd/MM/yyyy').format(_list[index].birthDate),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _listkey.currentState.removeItem(
                        index,
                        (context, animation) {
                          User user = _list.removeAt(index);
                          return SizeTransition(
                            sizeFactor: animation,
                            axis: Axis.vertical,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Card(
                                elevation: 5,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(user.imageSrc),
                                  ),
                                  title: Text(user.fullName),
                                  subtitle: Text(
                                    DateFormat('dd/MM/yyyy')
                                        .format(user.birthDate),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
