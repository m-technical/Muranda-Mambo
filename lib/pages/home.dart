import 'package:flutter/material.dart';
import 'package:murandamambo_app/components/horizontal_listview.dart';
import 'package:murandamambo_app/components/products.dart';
import 'package:murandamambo_app/pages/cart.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/newSolar-Battery-Bank1.1-1030x256.jpg'),
          AssetImage('images/newSolar-Generator3.1-1030x256.jpg'),
        ],
        autoplay: false,
        //animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text(
          'Muranda Mambo',
          style: TextStyle(color: Colors.yellowAccent),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.yellowAccent,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.yellowAccent,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Marlvin Kwenda'),
              accountEmail: Text('technical@murandamambo.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.green),
            ),
            // Body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home '),
                leading: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //Image Carousel
          // imageCarousel,

          //Padding Widget
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Categories')),
          ),

          //Horizontal List View
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Recent Products')),
          ),

          //Grid View
          Flexible(child: Products()),

        ],
      ),
    );
  }
}
