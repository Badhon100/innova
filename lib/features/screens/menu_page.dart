import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:innova/util/menu_item.dart';

class MenuItems {
  static const profile = MenuItem("Profile", CupertinoIcons.person);
  static const homePage = MenuItem("Home Page", CupertinoIcons.home);
  static const myCart = MenuItem("My Cart", CupertinoIcons.bag);
  static const favorites =
      MenuItem("Favorites", CupertinoIcons.square_favorites);
  static const order = MenuItem("Order", CupertinoIcons.car);
  static const notifications = MenuItem("Notifications", CupertinoIcons.bell);

  static const all = <MenuItem>[
    profile,
    homePage,
    myCart,
    favorites,
    order,
    notifications,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1A2530),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/img/person.png',
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Hey, 👋",
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, bottom: height * 0.03),
                child: const Text(
                  "Allison Becker",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ...MenuItems.all.map(buildMenuItem).toList(),
            SizedBox(
              height: height * 0.06,
            ),
            const Divider(
              color: Color(0xff2D3B48),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.exit_to_app,
                    color: Colors.grey,
                  ),
                  SizedBox(width: width * 0.05),
                  const Text("Sign Out",
                      style: TextStyle(color: Colors.white, fontSize: 17))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem(MenuItem item) => ListTile(
        selected: currentItem == item,
        selectedTileColor: Colors.black26,
        minLeadingWidth: 2,
        leading: Icon(
          item.icon,
          color: Colors.grey,
        ),
        title: Text(
          item.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onTap: () => onSelectedItem(item),
      );
}
