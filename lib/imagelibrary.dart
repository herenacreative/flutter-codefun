import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Library"),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 200,
                child: ListView(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: CircleAvatar(
                          child: Icon(Icons.people),
                          backgroundColor: Colors.white,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Your Name",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Image Library"),
                selected: true,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.video_library),
                title: Text("Video Library"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contacts"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: GridView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 7.0,
              child: Image.asset("images/gambar1.png"),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1),
        ));
  }
}
