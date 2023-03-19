import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
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
          Text("Recipes",
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
                image: AssetImage('assets/images/comida1.jpeg'),
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
                image: AssetImage('assets/images/horno.jpg'),
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
                image: AssetImage('assets/images/refri.jpeg'),
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
                image: AssetImage('assets/images/microhondas.jpeg'),
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
