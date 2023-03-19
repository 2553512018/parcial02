import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos personales'),
      ),
      body: Container(
        child: Text(
            'Desallorrado por: Mauricio Espinoza #25-4443-2004  y Daniel Escobar #25-5351-2018'),
      ),
    );
  }
}
