import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer_item extends StatelessWidget {
  String titel;
  String sub_titel;
  IconData icon_leading;

  Drawer_item({
    required this.titel,
    required this.sub_titel,
    required this.icon_leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          titel,
        ),
        subtitle: Text(
          sub_titel,
        ),
        leading: Icon(icon_leading),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ));
  }
}
