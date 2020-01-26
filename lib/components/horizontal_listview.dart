import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/category/cat_category1.png',
            image_caption: 'Himalaya',
          ),
          Category(
            image_location: 'images/category/cat_category2.png',
            image_caption: 'Asyir',
          ),
          Category(
            image_location: 'images/category/cat_category3.png',
            image_caption: 'African',
          ),
          Category(
            image_location: 'images/category/cat_category4.png',
            image_caption: 'Persian',
          ),
          Category(
            image_location: 'images/category/cat_category5.png',
            image_caption: 'Mongol',
          ),
          Category(
            image_location: 'images/category/cat_category6.png',
            image_caption: 'Pacific',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                )),
          ),
        ),
      ),
    );
  }
}
