import 'package:ecommerce_flutter/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pictures: product_list[index]['picture'],
            prod_type: product_list[index]['type'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_type;
  final prod_pictures;

  final prod_price;

  Single_prod(
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
