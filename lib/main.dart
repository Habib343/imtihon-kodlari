import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Imtohon5(),
  ));
}

class Imtohon5 extends StatefulWidget {
  const Imtohon5({super.key});

  @override
  State<Imtohon5> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Imtohon5> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Imtihon()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class ClassName {
  String? rasm;
  ClassName({this.rasm});
}

List<ClassName> a = [
  ClassName(rasm: "rasm/e60.jpg"),
  ClassName(rasm: "rasm/2.jpg"),
  ClassName(rasm: "rasm/3.jpg"),
  ClassName(rasm: "rasm/4.jpg"),
  ClassName(rasm: "rasm/d.jpg"),
  ClassName(rasm: "rasm/9.jpg"),
  ClassName(rasm: "rasm/2024-.jpeg"),
  ClassName(rasm: "rasm/images.jpg"),
];

Widget tem(ClassName data) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 46,
      backgroundColor: Colors.amber,
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(data.rasm ?? ""),
        ),
      ),
    ),
  );
}

class Name {
  String? rasm;
  String? raqam;
  Name({
    this.rasm,
    this.raqam,
  });
}

List<Name> nomlist = [
  Name(
    rasm: "rasm/e60.jpg",
  ),
  Name(
    rasm: "rasm/2.jpg",
  ),
  Name(
    rasm: "rasm/3.jpg",
  ),
  Name(
    rasm: "rasm/4.jpg",
  ),
  Name(rasm: "rasm/d.jpg"),
  Name(rasm: "rasm/9.jpg"),
  Name(rasm: "rasm/2024-.jpeg"),
  Name(rasm: "rasm/images.jpg"),
];
Widget temla(Name data) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: 200,
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data.rasm ?? ""),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            color: Colors.grey[700],
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(data.rasm ?? ""),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(CupertinoIcons.heart, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      "230",
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.chat_bubble_text, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      "15",
                    ),
                  ],
                ),
              ]
            ),
          ),
        ],
      ),
    ),
  );
}

class Imtihon extends StatefulWidget {
  const Imtihon({super.key});

  @override
  State<Imtihon> createState() => _ImtihonState();
}

class _ImtihonState extends State<Imtihon> {
  final GlobalKey<ScaffoldState> nom = GlobalKey<ScaffoldState>();
  TextEditingController input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: nom,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            nom.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: input,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(CupertinoIcons.search, color: Colors.white),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.telegram, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none, color: Colors.white),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.orange,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline, color: Colors.white),
                    label: Text(
                      "Add photo",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey[700],
      ),
      drawer: CustomDrawer(),
      backgroundColor: Colors.grey[700],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Stories",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_circle_outline,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Watch all",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.grey[800],
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ...a.map((e) => tem(e)).toList(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Feed",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "Latest",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Popular",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      children: nomlist.map((r) => temla(r)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
