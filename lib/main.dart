import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('With U'),
          backgroundColor: Colors.purple,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                  child: Text('Home'),
              ),
              Tab(
                  child: Text('Group'),
              ),

            ],
            indicatorWeight: 5.0, // Set the width of the underline

          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: ElevatedButton(


                onPressed: null,
                child: Text('Enabled'),
              )
            ),
            Center(
              child: Text("This is group!"),
            ),

          ],
        ),
      ),
    );
  }
}
