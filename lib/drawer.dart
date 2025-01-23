import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[800],
        child: Column(
          children: [
            Container(
              color: Colors.grey[800],
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "rasm/56565.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Instagram",
                        style: TextStyle(
                          fontFamily: "Billabong",
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("rasm/1.jpg"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Gofforov Habibullo",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "@habib__800",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildStatsColumn("46", "Posts"),
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.grey,
                      ),
                      buildStatsColumn("2.8k", "Foll"),
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.grey,
                      ),
                      buildStatsColumn("458", "Null"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 280, 
                    child: Divider(
                      color: Colors.white70,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            buildDrawerItem(0, CupertinoIcons.square_grid_2x2, "Feed"),
            buildDrawerItem(1, CupertinoIcons.search, "Explore"),
            buildDrawerItem(2, CupertinoIcons.bell, "Notifications"),
            buildDrawerItem(3, CupertinoIcons.paperplane, "Direct"),
            buildDrawerItem(4, CupertinoIcons.chart_bar, "Stats"),
            buildDrawerItem(5, CupertinoIcons.settings, "Settings"),
          ],
        ),
      ),
    );
  }

  Widget buildStatsColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget buildDrawerItem(int index, IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        color: selectedIndex == index ? Colors.red : Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: selectedIndex == index ? Colors.white : Colors.white,
        ),
      ),
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
