import 'package:flutter/material.dart';

Widget GamniDrawer() {
  return Drawer(
    child: new ListView(
      children: [
        new UserAccountsDrawerHeader(
          accountName: Text("David Maged"),
          accountEmail: Text("Davidmaged@gmail.com"),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          decoration: new BoxDecoration(
            color: Colors.red,
          ),
        ),
        DrawerInkWell(title: "Home",icon: Icon(Icons.home)),
        DrawerInkWell(title: "My Account",icon: Icon(Icons.person)),
        DrawerInkWell(title: "My Orders",icon: Icon(Icons.shopping_basket)),
        DrawerInkWell(title: "Categories",icon: Icon(Icons.dashboard)),
        DrawerInkWell(title: "Favourites",icon: Icon(Icons.favorite)),
        Divider(
          height: 10,
        ),
        DrawerInkWell(title: "Settings",icon: Icon(Icons.settings,color: Colors.blue,)),
        DrawerInkWell(title: "Help",icon: Icon(Icons.help,color: Colors.green,))
      ],
    ),
  );
}

Widget DrawerInkWell({String title, Icon icon}) {
  return InkWell(
    onTap: () {},
    child: ListTile(
      title: Text(title),
      leading: icon,
    ),
  );
}
