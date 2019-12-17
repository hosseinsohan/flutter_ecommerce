import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category("images/cat/tshirt.png", "تی شرت"),
          Category("images/cat/dress.png", "لباس زنانه"),
          Category("images/cat/jeans.png", "شلوار"),
          Category("images/cat/formal.png", "مجلسی"),
          Category("images/cat/informal.png", "غیررسمی"),
          Category("images/cat/shoe.png", "کفش"),
          Category('images/cat/others.png', 'دیگر')


        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(this.image_location,this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(
      onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
            width: 70.0,
            height: 50.0,),
            subtitle:Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption,style: TextStyle(color: Colors.black),)
            ),
          ),
        ),
      ),
    );
  }
}
