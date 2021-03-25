import 'package:flutter/material.dart';

import 'drawer.dart';
import 'productPage.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double xOffset = 0;

  double yOffset = 0;

  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DrawerScreen(),
        AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isDrawerOpen ? -0.5 : 0),
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(
              color: Color(0xfff7f7f7),
              borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
          padding: EdgeInsets.fromLTRB(12, 28, 12, 12),
          child: Container(
            height: double.infinity,
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          }),
                  Text(
                    " Dashboard",
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      item(context, Icons.import_export, "Manage Products"),
                      SizedBox(
                        width: 8,
                      ),
                      item(context, Icons.merge_type, "Manage Types"),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      item(context, Icons.account_box_rounded, "Manage Bodies"),
                      SizedBox(
                        width: 8,
                      ),
                      item(context, Icons.merge_type, "Manage Variations"),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      item(context, Icons.account_box_rounded, "Manage Parts"),
                      SizedBox(
                        width: 8,
                      ),
                      item(context, Icons.local_fire_department,
                          "Manage Departments"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget item(BuildContext context, IconData icon, String name) {
    return Expanded(
      child: Container(
        height: 170,
        width: 170,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProductPage()));
            },
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Icon(icon)),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
