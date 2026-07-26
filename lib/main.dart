import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer( // sudhu drawer dile bam side e, endDrawer dile dan side e hobe
          child: Column(
            children: [
              DrawerHeader(child: Text("Navigation Drawer",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ListTile(
                leading: Icon(Icons.home,), title: Text("Home"),
              ),

              ListTile(
                leading: Icon(Icons.settings,), title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.contact_emergency,), title: Text("Contact us"),
              ),

            ],
          )

        ),
        appBar: AppBar(
          title: Text("Scroll Left <---"),
          backgroundColor: Colors.blue,
        ),
        body: PageView(
          controller: _controller,
          children: [
            page1(),
            page2(),
            page3(),

          ],
        ),
      ),
    );
  }
}

