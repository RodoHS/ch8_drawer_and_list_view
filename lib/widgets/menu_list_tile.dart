import 'package:flutter/material.dart';
import '../pages/birthdays.dart';
import '../pages/reminders.dart';
import '../pages/gratitude.dart';

class MenuListTileWidget extends StatefulWidget {
  @override
  _MenuListTileWidgetState createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => Birthdays(),
            ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.sentiment_very_satisfied),
          title: Text('Gratitude'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => Gratitude(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.menu),
          title: Text('Reminders'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => Reminders(),
              ),
            );
          },
        ),
        Divider(color: Colors.grey,),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.pop(context);
          },
        ),

      ],
    );
  }
}
