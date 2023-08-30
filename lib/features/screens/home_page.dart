import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Image.asset(
                    'assets/img/menu1.png',
                    height: 50,
                    width: 50,
                    color: Colors.black,
                    // height: 10,
                    // width: 10,
                  ),
                ),
              ),
            ),
            const Column(
              children: [
                Text(
                  "Store location",
                  style: TextStyle(fontSize: 14, color: Colors.black38),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xffF87265),
                    ),
                    Text(
                      ' Mondolibug, Sylhet',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_bag)),
              ),
            ),
          ],
        ),
      ),

      
    );
  }
}
