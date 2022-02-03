import 'package:flutter/material.dart';
import 'package:flutter_app/customWidget/GamniDrawer.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>
  {
    @override
    Widget build(BuildContext context)
    {
      return Scaffold(
        appBar: new AppBar(
          elevation: 0,
          title: Text('Gamni'),
          backgroundColor: Colors.indigo,
          actions: [
            new IconButton(icon:Icon (Icons.search,color: Colors.white,), onPressed: (){}),
            new IconButton(icon:Icon (Icons.shopping_cart,color: Colors.white,), onPressed: (){}),
          ],
        ),
        drawer: GamniDrawer()
      );
    }

  }
