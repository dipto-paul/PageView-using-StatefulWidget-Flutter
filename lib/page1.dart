import 'package:flutter/material.dart';
import 'package:page_view_flutter/page3.dart';


class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red,
            child:Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context) => const page3(),
                  )
                  );
                }, child: const Text("Go to Page 3"),
              ),
            )
        ),
      )
    );
  }
}
