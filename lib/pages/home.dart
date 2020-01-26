import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_flutter/components/horizontal_listview.dart';
import 'package:ecommerce_flutter/components/products.dart';
import 'package:ecommerce_flutter/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/cat1.jpg'),
          AssetImage('images/carousel/cat2.jpg'),
          AssetImage('images/carousel/cat3.jpg'),
          AssetImage('images/carousel/cat4.jpg'),
          AssetImage('images/carousel/cat5.jpg'),
          AssetImage('images/carousel/cat6.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Meong App'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Lolmastah'),
              accountEmail: Text('lolmastahreborn@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.lightGreen),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My account"),
                leading: Icon(Icons.account_circle),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text("My Cart"),
                leading: Icon(Icons.shopping_cart),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings, color: Colors.indigo),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //Image carousel
          image_carousel,
          //Padding Widget
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text('Categories')),
          //Horizontal list view
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: new Text('Recent Product'),
          ),
          // Grid View
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
