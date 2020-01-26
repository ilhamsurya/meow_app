import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
    {
      "name": "Sasa",
      "picture": "images/category/cat_category1.png",
      "price": 5750000,
      "food": "Meongs",
      "store": "Bandung Store",
      "gen": "Female"
    },
    {
      "name": "Snowy",
      "picture": "images/category/cat_category1.png",
      "price": 1750000,
      "food": "RoCaine",
      "store": "Garut Store",
      "gen": "Male"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Product_on_the_cart[index]["name"],
          cart_prod_food: Product_on_the_cart[index]["food"],
          cart_prod_store: Product_on_the_cart[index]["store"],
          cart_prod_gen: Product_on_the_cart[index]["gen"],
          cart_prod_price: Product_on_the_cart[index]["price"],
          cart_prod_pictures: Product_on_the_cart[index]["pictures"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pictures;
  final cart_prod_price;
  final cart_prod_food;
  final cart_prod_store;
  final cart_prod_gen;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pictures,
      this.cart_prod_price,
      this.cart_prod_food,
      this.cart_prod_gen,
      this.cart_prod_store});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //Masi error
        /*leading: Image.asset(
          cart_prod_pictures,
          width: 100.0,
          height: 80.0,
        ),*/
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Food: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_food,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Text("Location: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_store,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green)),
                ),
              ],
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text("Rp. ${cart_prod_price}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.redAccent)))
          ],
        ),
      ),
    );
  }
}
