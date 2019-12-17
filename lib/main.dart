import 'package:flutter/material.dart';


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
    return Scaffold(

      appBar: new AppBar(

        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("فروشگاه آنلاین"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){})
        ],
      ),
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
    );
  }
}
