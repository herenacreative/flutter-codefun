import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_launch/flutter_launch.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<String> nama = [
    'Mz Ubay',
    'Mz Rafly',
    'Mz Amri',
    'Mb Sinta',
    'Mz Faisal',
    'Mz Asep',
    'Mz Maulana',
    'Mz Abror',
    'Mz Fahmi',
    'MZ Frans'
  ];
  List<String> nomor = [
    '+62 8388857234',
    '+62 81218860714',
    '+62 8968999321',
    '+62 8381900500',
    '+62 8119471927',
    '+62 85861539820',
    '+62 85718816971',
    '+62 82124042908',
    '+62 85813973559',
    '+62 81291311900'
  ];

  _launchTelp(String _nomors) async {
    String url = 'tel:$_nomors';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  _launchSms(String _nomors) async {
    String url = 'sms:$_nomors';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  _launchWa(String _nomors) async {
    await FlutterLaunch.launchWathsApp(
        phone: '$_nomors', message: 'Hallo zheyengs');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              'images/image1.jpg',
              fit: BoxFit.fill,
            )),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              String _nomor = nomor[index];
              String _nama = nama[index];
              return Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: ListTile(
                  title: Text(nama[index]),
                  trailing: Icon(Icons.people),
                ),
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Call',
                    icon: Icons.call,
                    color: Colors.blue,
                    onTap: () {
                      _launchTelp(_nomor);
                    },
                  ),
                  IconSlideAction(
                    caption: 'Sms',
                    icon: Icons.message,
                    color: Colors.grey,
                    onTap: () {
                      _launchSms(_nomor);
                    },
                  )
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Whatsapp',
                    icon: Icons.call,
                    color: Colors.green,
                    onTap: () {
                      _launchWa(_nomor);
                    },
                  ),
                  IconSlideAction(
                    caption: 'Email',
                    icon: Icons.mail,
                    color: Colors.red,
                    onTap: () {},
                  )
                ],
              );
            }, childCount: nomor.length),
          )
        ],
      ),
    );
  }
}
