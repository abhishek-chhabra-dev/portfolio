import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topRight,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Close")),
            ),
          ),
          fixSizeh,
          ListTile(
            title: Text('About Me'),
            onTap: () {
              if (ModalRoute.of(context)?.settings.name.toString() == "/") {
                Navigator.pop(context);
              } else {
                setState(() {
                  tabIndex = 0;
                });
                Navigator.popAndPushNamed(context, '/');
              }
            },
          ),
          fixSizeh,
          ListTile(
            title: Text('Portfolio'),
            onTap: () {
              if (ModalRoute.of(context)?.settings.name.toString() ==
                  "/portfolio") {
                Navigator.pop(context);
              } else {
                setState(() {
                  tabIndex = 1;
                });
                Navigator.popAndPushNamed(context, '/portfolio');
              }
            },
          ),
          fixSizeh,
          ListTile(
            title: Text('Contact Me'),
            onTap: () {
              // Navigator.pushReplacementNamed(context, '/contactme');
              // Navigator.popAndPushNamed(context, '/contactme');
              if (ModalRoute.of(context)?.settings.name.toString() ==
                  "/contactme") {
                Navigator.pop(context);
              } else {
                setState(() {
                  tabIndex = 2;
                });
                Navigator.popAndPushNamed(context, '/contactme');
              }
            },
          ),
        ],
      ),
    );
  }
}
