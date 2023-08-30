import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:innova/features/screens/home_page.dart';
import 'package:innova/features/screens/menu_page.dart';
import 'package:innova/util/menu_item.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  MenuItem currentItem = MenuItems.profile;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
        moveMenuScreen: false,
        mainScreen: const HomePage(),
        menuScreen: Builder(
          builder: (context)=> MenuPage(
                currentItem: currentItem,
                onSelectedItem: (item) {
                  setState(() {
                    () => currentItem = item;
                    ZoomDrawer.of(context)!.close();
                  });
                })
        ),
      );
}
