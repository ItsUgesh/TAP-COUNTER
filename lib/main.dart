import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("usertap");
  }

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellowAccent,
        // appBar: AppBar(
        //   title: const Text("Demo App"),
        //   backgroundColor: Colors.yellow,
        //   leading: const Icon(Icons.menu),
        //   actions: [
        //     IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
        //   ],
        // ),
        body: GestureDetector(
          onTap: userTapped,
          child: Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.black87,
              child: const Center(
                child: Text(
                  "tap me",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 44,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
