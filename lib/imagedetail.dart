import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageDetail extends StatefulWidget {
  final String gambarrr;
  ImageDetail({Key key, this.gambarrr}) : super(key: key);

  @override
  _ImageDetailState createState() => _ImageDetailState(gambarrr);
}

class _ImageDetailState extends State<ImageDetail> {
  String gambarrr;
  _ImageDetailState(this.gambarrr);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Detail"),
      ),
      body: Column(
        children: <Widget>[Image.asset("$gambarrr")],
      ),
    );
  }
}
