import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innova/features/widgets/MultipleShoeChoice.dart';
import 'package:innova/features/widgets/add_to_cart_button.dart';
import 'package:innova/features/widgets/custom_circular_button.dart';
import 'package:innova/features/widgets/size_list.dart';
import 'package:innova/util/shoe_details.dart';

class ShoeDetails extends StatefulWidget {
  final int index;
  const ShoeDetails({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<ShoeDetails> createState() => _ShoeDetailsState();
}

class _ShoeDetailsState extends State<ShoeDetails> {
  int value = 2;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF8F9Fa),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Men's Shoes",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bag,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Image.asset(shoeDetails[widget.index]['image']!),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BEST SELLER",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      shoeDetails[widget.index]['name']!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      shoeDetails[widget.index]['price']!,
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      shoeDetails[widget.index]['description']!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: height*0.01,),
                    const Text(
                      "Gellary",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.09,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: shoeDetails[widget.index]['images'].length,
                        itemBuilder: (context, index2) {
                          return MultipleShoeChoice(
                            height: height,
                            width: width,
                            index: widget.index,
                            imgIndex: index2,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Size",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: height*0.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.01),
                              child: InkWell(
                                onTap: () {},
                                child: const Text("EU"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.01),
                              child: InkWell(
                                onTap: () {},
                                child: const Text("US"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.01),
                              child: InkWell(
                                onTap: () {},
                                child: const Text("UK"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    
                    SizedBox(
                      height: height * 0.07,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sizeList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  value = index;
                                });
                              },
                              child: CustomCircularButton(
                                height: height,
                                width: width,
                                size: sizeList[index].toString(),
                                fontColor: (value == index)
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: (value == index)
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Price",
                            ),
                            Text(
                              shoeDetails[widget.index]['price']!,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        AddToCartButton(
                          height: height,
                          width: width,
                          onTap: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
