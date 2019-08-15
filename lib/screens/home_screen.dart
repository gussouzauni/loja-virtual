import 'package:flutter/material.dart';
import 'package:loja/tab/home_tab.dart';
import 'package:loja/tab/products_tab.dart';
import 'package:loja/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    return PageView(
      controller: _pageController,

      //Não poder deslizar a tela com o dedo
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
    ),
        Container(color: Colors.yellow,),
        Container(color: Colors.green,)
      ],
    );
  }
}
