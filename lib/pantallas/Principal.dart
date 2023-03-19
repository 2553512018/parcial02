import 'package:flutter/material.dart';
import 'package:parcial2/temas/colores.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcial2/pantallas/Account.dart';
import 'package:parcial2/pantallas/Groceries.dart';
import 'package:parcial2/pantallas/Plans.dart';
import 'package:parcial2/pantallas/Recipes.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanco,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      //appBar: getappBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        Account(),
        Goceries(),
        Plans(),
        Recipes(),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20, top: 5),
                child: Image(
                  image: NetworkImage(
                      'https://d500.epimg.net/cincodias/imagenes/2015/05/08/pyme/1431098283_691735_1431098420_noticia_normal.jpg'),
                  height: 350,
                ),
              ),
              SizedBox(
                height: 38,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    style: TextStyle(color: blanco),
                    cursorColor: primario,
                    decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.search),
                      border: InputBorder.none,
                      hintText: "Busqueda",
                      hintStyle: TextStyle(
                        color: blanco.withOpacity(0.3),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [
      LineIcons.utensilSpoon,
      LineIcons.gripLines,
      LineIcons.babyCarriage,
      LineIcons.user,
      FloatingActionButton(
        onPressed: () {
          print('Agregar');
        },
      ),
    ];
    List textoItems = ["Recipes", "Plans", "Groseries", "Account"];
    return Container(
      height: 400,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textoItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  child: Column(children: [
                    Icon(
                      iconosItems[index],
                      color: pageIndex == index ? primario : Colors.black,
                    ),
                  ]),
                );
              })),
        ),
      ),
    );
  }
}
