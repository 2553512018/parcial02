import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
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
          Text("Privacidad",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();

  Widget getBody() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nombre',
              hintText: 'Ingresa tu nombre completo',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Correo electrónico',
              hintText: 'Ingresa tu correo electrónico',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Numero de tarjeta de credito o debito',
              hintText: 'Ingresa el numero ',
            ),
            obscureText: true,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Fecha de vencimiento',
              hintText: 'Ingresa una contraseña',
            ),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // Realizar acciones al enviar el formulario
              }
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
