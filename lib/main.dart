import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'components/horizontal_listview.dart';


void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child: HomePage(),
      ),
    )
  );
}

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
        images: [
          AssetImage('images/slide1.jpg'),
          AssetImage('images/slide2_.jpg'),
          AssetImage('images/slide3.jpg'),
          AssetImage('images/slide4.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );


    return Scaffold(

      //------------------------------------------------------------------------------
      //------------------------------------------------------------------------------
      //------------------------------------------------------------------------------appbar
      //------------------------------------------------------------------------------
      //------------------------------------------------------------------------------
      appBar: new AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("فروشگاه آنلاین"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){})
        ],
      ),



      //------------------------------------------------------------------------------
      //------------------------------------------------------------------------------
      //------------------------------------------------------------------------------drawer
      //------------------------------------------------------------------------------
      //------------------------------------------------------------------------------
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            //**************header***************
           UserAccountsDrawerHeader(
             accountName: Text('حسین سوهان'),
             accountEmail: Text('hossein.sohan@gmail.com'),
           currentAccountPicture: GestureDetector(
             child: new CircleAvatar(
               backgroundColor: Colors.grey,
               child: Icon(Icons.person),),
           ),
           decoration: new BoxDecoration(color: Colors.pink),),

            //**************body***************
            InkWell(
              onTap:() {},
              child: ListTile(
                title: Text("صفحه اصلی"),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:() {},
              child: ListTile(
                title: Text("مدیریت حساب"),
                leading: Icon(Icons.person,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:() {},
              child: ListTile(
                title: Text("لیست سفارش ها"),
                leading: Icon(Icons.shopping_basket,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:() {},
              child: ListTile(
                title: Text("صفحه اصلی"),
                leading: Icon(Icons.dashboard,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:() {},
              child: ListTile(
                title: Text("دسته بندی محصولات"),
                leading: Icon(Icons.favorite,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:() {},
              child: ListTile(
                title: Text("لیست علاقه مندی ها"),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),
            Divider(),
            InkWell(
                onTap:() {},
                child: ListTile(
                  title: Text("تنظیمات"),
                  leading: Icon(Icons.settings),
                ),
              ),
            InkWell(
                onTap:() {},
                child: ListTile(
                  title: Text("درباره ما"),
                  leading: Icon(Icons.help,color: Colors.blue),
                ),
              ),

          ],
        ),
      ),


      body: new ListView(
        children: <Widget>[
          image_carousel,

          //padding widget
          new Padding(
            padding: EdgeInsets.all(8.0),
            child:Text("دسته بندی ها") ,),

          //horizontal listview
          HorizontalList(),

        ],
      ),
    );
  }
}

