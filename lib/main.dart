import 'package:flutter/material.dart';
import 'EventEditingPage.dart';
import 'event.dart';
import 'package:provider/provider.dart';
import 'calendar_widget.dart';
import 'EventEditingPage.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Calender Events App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        accentColor: Colors.white,
        primaryColor: Colors.blue,
      ),
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(MyApp.title),
      ),
      body: CalendarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => EventEditingPage()),
          );
        },
      ),
    );
  }
}
