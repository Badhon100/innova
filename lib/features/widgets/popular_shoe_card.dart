import 'package:flutter/material.dart';

class PopularShoeCard extends StatelessWidget {
  const PopularShoeCard({
    super.key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.image,
    required this.name,
    required this.price,
    required this.onDetailsTap,
  });

  final double width;
  final double height;
  final VoidCallback onTap;
  final VoidCallback onDetailsTap;
  final String image;
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.04),
          child: InkWell(
            onTap: onDetailsTap,
            child: Container(
              height: height * 0.25,
              width: width * .44,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    height: height * 0.14,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BEST CHOICE",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: width * 0.382,
          top: height * 0.2,
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: height * 0.05,
              width: width * 0.1,
              decoration: const BoxDecoration(
                  color: Color(0xff5B9EE1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(19),
                  )),
              child: const Icon(Icons.add, color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
