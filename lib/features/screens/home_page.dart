import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:innova/features/screens/shoe_details.dart';
import 'package:innova/features/widgets/best_choice_card.dart';
import 'package:innova/features/widgets/logo_container.dart';
import 'package:innova/features/widgets/popular_shoe_card.dart';
import 'package:innova/util/brand_logos.dart';
import 'package:innova/util/shoe_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
              child: InkWell(
                onTap: () => ZoomDrawer.of(context)!.toggle(),
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
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.bag,
                      ),
                    ),
                    Positioned(
                        left: width * 0.08,
                        child: const Icon(
                          Icons.brightness_1,
                          size: 8.0,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(CupertinoIcons.search),
                  border: InputBorder.none,
                  hintText: "Looking for shoes",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          value = index;
                        });
                      },
                      child: (value == index)
                          ? logoAndNameContainer(
                              brandLogos[index]['image']!,
                              brandLogos[index]['name']!,
                              width,
                              height,
                              context)
                          : logoContainer(brandLogos[index]['image']!, width),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Shoes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("See all"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.27,
            child: ListView.builder(
              itemCount: shoeDetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PopularShoeCard(
                  width: width,
                  height: height,
                  image: shoeDetails[index]['image']!,
                  name: shoeDetails[index]['name']!,
                  price: shoeDetails[index]['price']!,
                  onDetailsTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoeDetails(index: index),
                      ),
                    );
                  },
                  onTap: () {
                    print("added");
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "New Arrivals",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("See all"),
                ),
              ],
            ),
          ),
          BestChoiceCard(width: width, height: height),
        ],
      ),
    );
  }
}
