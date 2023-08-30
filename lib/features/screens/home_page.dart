import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

      body: Column(
        children: [
          SizedBox(height: height*0.03,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.05),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(CupertinoIcons.search),
                  border: InputBorder.none,
                  hintText: "Looking for shoes",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
