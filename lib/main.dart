import 'package:flutter/material.dart';

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
          title: Text('Gamni'),
          backgroundColor: Colors.indigo,
          actions: [
            new IconButton(icon:Icon (Icons.search,color: Colors.white,), onPressed: (){}),
            new IconButton(icon:Icon (Icons.shopping_cart,color: Colors.white,), onPressed: (){}),
          ],
        ),
        drawer: Drawer()
      );
    }

  }
