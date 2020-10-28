import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarContainer extends StatelessWidget {
  final String image;
  final String carCategory;
  final String price;

  const CarContainer({Key key, this.image, this.carCategory, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Container(
            height: 130,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(carCategory,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
