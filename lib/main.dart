import 'package:flutter/material.dart';
import 'package:flutter_ui/data/fake_data.dart';
import 'package:flutter_ui/model/profile.dart';
import 'package:flutter_ui/profil_topsection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Profile profile = fakeProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 67,
        centerTitle: false,
        titleSpacing: 0.0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          '프로필',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            // 작으면 버튼을 밑으로 민다
            child: ListView(
              // 스크롤되게만들려고 listview
              shrinkWrap: true,
              children: [
                ProfileTopSection(profile),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('별로에요'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('별로에요'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
