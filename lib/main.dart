import 'package:flutter/material.dart';
import 'package:scand_app/Drawer.dart';

void main() {
  runApp(MaterialApp(
    home: choice_Between(),
  ));
}

class choice_Between extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orentation = MediaQuery.of(context).orientation;

    return Scaffold(
        body: Container(
      child:
          orentation == Orientation.landscape ? land_Screen() : drawer_list(),
    ));
  }
}

class drawer_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scande Assignmint'),
        ),
        body: Container(color: Colors.red),
        drawer: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(children: [
            Drawer_item(
              titel: 'First Item',
              sub_titel: 'smalle  First title item',
              icon_leading: Icons.home,
            ),
            Drawer_item(
              titel: 'Scand Item',
              sub_titel: 'smalle  Scand title item',
              icon_leading: Icons.favorite_sharp,
            ),
            Drawer_item(
              titel: 'Third Item',
              sub_titel: 'smalle  Third title item',
              icon_leading: Icons.card_travel,
            ),
            Drawer_item(
              titel: 'Fourth Item',
              sub_titel: 'smalle  Fourth title item',
              icon_leading: Icons.add_box,
            ),
            Drawer_item(
              titel: 'fiveth Item',
              sub_titel: 'smalle  fiveth title item',
              icon_leading: Icons.add_card,
            )
          ]),
        ));
  }
}

class land_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scande Assignmint'),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500,
                    crossAxisSpacing: 7,
                    childAspectRatio: 0.5),
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Column(children: [
                        Drawer_item(
                          titel: 'First Item',
                          sub_titel: 'smalle  First title item',
                          icon_leading: Icons.home,
                        ),
                        Drawer_item(
                          titel: 'Scand Item',
                          sub_titel: 'smalle  Scand title item',
                          icon_leading: Icons.favorite_sharp,
                        ),
                        Drawer_item(
                          titel: 'Third Item',
                          sub_titel: 'smalle  Third title item',
                          icon_leading: Icons.card_travel,
                        ),
                        Drawer_item(
                          titel: 'Fourth Item',
                          sub_titel: 'smalle  Fourth title item',
                          icon_leading: Icons.add_box,
                        ),
                        Drawer_item(
                          titel: 'fiveth Item',
                          sub_titel: 'smalle  fiveth title item',
                          icon_leading: Icons.add_card,
                        )
                      ]),
                    );
                  } else {
                    return Container(
                      color: Colors.red,
                    );
                  }
                },
              ),
            )
          ],
        ));
  }
}
