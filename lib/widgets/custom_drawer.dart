import 'package:flutter/material.dart';
import 'package:loja/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

 final PageController pageController;
  //Criei um construtor para acessar minhas paginas;
 CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {

      Widget _buildBodyBack() => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 203, 236, 241),
              Colors.white
            ], begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
      );


      return Drawer(
        child: Stack(
          children: <Widget>[
            _buildBodyBack(),
            ListView(
              padding: EdgeInsets.only(left: 32.0, top: 16.0),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                  height: 170.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 8.0,
                        left: 0.0,
                        child: Text("Flutter Sports",
                          style: TextStyle(fontSize: 31.0, fontWeight: FontWeight.bold),
                      )
                      ),
                      Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Olá",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                "Entre ou cadastre-se >",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              onTap: () {

                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                DrawerTile(Icons.home, "Inicio", pageController, 0),
                DrawerTile(Icons.list, "Produtos", pageController, 1),
                DrawerTile(Icons.location_on, "Lojas", pageController, 2),
                DrawerTile(Icons.playlist_add_check, "Meus pedidos", pageController, 3),
              ],
            )
          ],
           // O widget STACK leva vários filhos e os ordena de baixo para cima. Portanto, o primeiro item é o último e o último é o mais alto.
        ),
      );
  }
}
