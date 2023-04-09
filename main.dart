import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 76, 175, 162),
          title: Text("business card"),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(200, 76, 175, 162),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://c4.wallpaperflare.com/wallpaper/670/313/319/anime-naruto-madara-uchiha-wallpaper-preview.jpg"),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    "mahmoud nagah",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 31),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text("FLUTTER DEVELOPER",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          fontSize: 20))),
              Divider(
                height: 20,
                thickness: .5,
                indent: 120,
                endIndent: 140,
                color: Colors.white,
              ),
              Container(
                width: 350,
                height: 50,
                color: Colors.white,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 59, 138, 127),
                    ),
                    Text(
                      "+0201158862051",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                width: 350,
                height: 50,
                color: Colors.white,
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 73, 156, 156),
                    ),
                    Text(
                      "m1234@email.com",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
