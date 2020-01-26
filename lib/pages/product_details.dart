import 'package:ecommerce_flutter/main.dart';
import 'package:ecommerce_flutter/pages/home.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;

  final product_detail_type;
  final product_detail_price;
  final product_detail_pictures;

  // Constructor for product
  ProductDetails(
      {this.product_detail_name,
      this.product_detail_type,
      this.product_detail_pictures,
      this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('Meong App')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child:
                  Container(child: Image.asset(widget.product_detail_pictures)),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(widget.product_detail_type,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18.0))),
                      Expanded(
                        child: new Text(
                          widget.product_detail_price,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18.0,
                              color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          //===================First BUtto===//
          Row(
            children: <Widget>[
              //==================== Food ==============//
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Food"),
                            content: new Text("choose your food"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Food")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //==================== Store Location ==============//
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Store"),
                            content: new Text("choose your Store"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Store")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //==================== Type ==============//
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Gender"),
                          content: new Text("your cat Gender"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Gen")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              //==================== Second Button ==============//
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Order")),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border), onPressed: () {}),
            ],
          ),
          Divider(color: Colors.blueGrey),
          new ListTile(
            title: new Text("More about this cat"),
            subtitle: new Text(
                "your cat, my cat, all cat the cat is really a cat that reallt cat to cat and act the cat most cat are cat who cat me cat"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5, 5),
                child: new Text("Cat Name: ",
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name))
            ],
          ),
          // CAT PRICE /////////////////////////
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5, 5),
                child: new Text("Price Starting: ",
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_price),
              )
            ],
          ),
          // CAT TYPE /////////////////////////
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5, 5),
                child: new Text("Cat Type: ",
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_type),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Cat"),
          ),
          //SIMILIAR Cat SECTION////
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Snowy",
      "type": "Himalayan",
      "picture": "images/category/cat_category1.png",
      "price": "Rp.1750k"
    },
    {
      "name": "Molly",
      "type": "African",
      "picture": "images/category/cat_category2.png",
      "price": "Rp.3.750k"
    },
    {
      "name": "Sasa",
      "type": "American",
      "picture": "images/category/cat_category3.png",
      "price": "Rp.5.750k"
    },
    {
      "name": "Lula",
      "type": "Asian",
      "picture": "images/category/cat_category4.png",
      "price": "Rp.1.750k"
    },
    {
      "name": "Nana",
      "type": "Pacific",
      "picture": "images/category/cat_category5.png",
      "price": "Rp.750k"
    },
    {
      "name": "Roke",
      "type": "Mars",
      "picture": "images/category/cat_category6.png",
      "price": "Rp.450k"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_pictures: product_list[index]['picture'],
            prod_type: product_list[index]['type'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_type;
  final prod_pictures;
  final prod_price;

  Similar_Single_prod(
      {this.prod_name, this.prod_type, this.prod_pictures, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  // passing value product to other page
                  builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_type: prod_type,
                        product_detail_price: prod_price,
                        product_detail_pictures: prod_pictures,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              prod_name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          new Text("${prod_price}",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold))
                        ],
                      )),
                  child: Image.asset(
                    prod_pictures,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
