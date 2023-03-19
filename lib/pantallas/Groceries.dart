import 'package:flutter/material.dart';

class Goceries extends StatefulWidget {
  const Goceries({super.key});

  @override
  State<Goceries> createState() => _GoceriesState();
}

class _GoceriesState extends State<Goceries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.grey,
      title: Row(
        children: [
          Text("Goceries",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  Widget getBody() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Card(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/comida1.jpeg'),
              ),
              Text('Cocina'),
              Text('300.00'),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/horno.jpg'),
              ),
              Text('horno'),
              Text('70.00'),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/refri.jpeg'),
              ),
              Text('refrigeradora'),
              Text('500.00'),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/microhondas.jpeg'),
              ),
              Text('microhondas'),
              Text('120.00'),
            ],
          ),
        ),
      ],
    );
  }
}
