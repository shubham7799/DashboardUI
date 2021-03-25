import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff3e45a9),
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/10, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text('San Francisco, CA',
                      style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
          Column(
            children: [
              drawerItem("Products"),
              drawerItem("Types"),
              drawerItem("Bodies"),
              drawerItem("Variations"),
              drawerItem("Parts"),
              drawerItem("Departments"),
            ],
          ),
        ],
      ),
    );
  }

  Widget drawerItem(String itemText) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          itemText,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
