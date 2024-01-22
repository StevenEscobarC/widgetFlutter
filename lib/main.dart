import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text('Container Widget')),
          drawer: const Drawer(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                    20, (index) => ListTile(title: Text('Item $index'))),
              ),
            ),
          )),
    );
  }

  Widget container() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                //borderRadius: BorderRadius.circular(12),
              ),
              height: 500,
              child: Text(
                'Container',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                //borderRadius: BorderRadius.circular(12),
              ),
              height: 500,
              child: Text(
                'Container',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
