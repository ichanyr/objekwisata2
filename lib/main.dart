import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/curug.jpg', height: 500, width: 25),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'Curug Lawe',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text('08:00 - 15:00'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text('Rp 10.000'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  '''Sumber mata air Curug Lawe berasal dari Gunung Ungaran.
                    Curug berarti air terjun, lalu disebut Curug Lawe karena 
                    aliran air yang jatuh mirip seperti lawe atau benang dalam 
                    Bahasa Indonesia. Dan memang begitulah adanya, dan itulah
                    indahnya.''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.hS95ZM1PzUl5_HyIPKFwTAHaFj?w=246&h=185&c=7&r=0&o=5&pid=1.7',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('images/lawe.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://www.bing.com/th?id=OIP.Ibb16YQBS9AXc_BOQSR45gHaE6&w=184&h=185&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2https://www.bing.com/th?id=OIP.Ibb16YQBS9AXc_BOQSR45gHaE6&w=184&h=185&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
