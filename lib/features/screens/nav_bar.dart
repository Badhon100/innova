import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innova/features/screens/landing_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int tabIndex = 0;
  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const IndexedStack(
        children: [
          LandingPage(),
          Center(child: Text("Favorites")),
          Center(child: Text("Add to cart")),
          Center(child: Text('Notifications')),
          Center(child: Text("Profile")),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabIndex,
          onTap: changeTabIndex,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.black,
          iconSize: 21,
          items: [
            itembar(CupertinoIcons.home),
            itembar(Icons.favorite_border_outlined),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.transparent,
              ),
              label: '',
            ),
            itembar(CupertinoIcons.bell),
            itembar(CupertinoIcons.person)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: (){},
        child: const Icon(CupertinoIcons.bag),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  itembar(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: '');
  }
}
