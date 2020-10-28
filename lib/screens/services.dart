import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_car/models/car_category.dart';
import 'package:task_car/models/cars.dart';
import 'package:task_car/widgets/car_container.dart';
import 'package:task_car/widgets/text_Address.dart';

import '../widgets/browser_widget.dart';

final divider = Divider(
  color: Colors.grey[300],
  thickness: 5,
  height: 1,
);

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<CarCategory> _carCategory = [
    CarCategory(name: 'Wagon', image: 'assets/images/2.jpg'),
    CarCategory(name: 'SUV', image: 'assets/images/3.jpg'),
    CarCategory(name: 'Sudan', image: 'assets/images/4.jpg'),
    CarCategory(name: 'HatchBack', image: 'assets/images/5.jpg'),
    CarCategory(name: 'Wagon', image: 'assets/images/6.jpg'),
    CarCategory(name: 'Wagon', image: 'assets/images/2.jpg'),
    CarCategory(name: 'Wagon', image: 'assets/images/2.jpg'),
    CarCategory(name: 'Wagon', image: 'assets/images/2.jpg'),
  ];

  List<Cars> _cars = [
    Cars(image: 'assets/images/logo1.jpg'),
    Cars(image: 'assets/images/logo2.jpg'),
    Cars(image: 'assets/images/logo3.jpg'),
    Cars(image: 'assets/images/logo1.jpg'),
    Cars(image: 'assets/images/logo1.jpg'),
    Cars(image: 'assets/images/logo4.jpg'),
    Cars(image: 'assets/images/logo3.jpg'),
    Cars(image: 'assets/images/logo2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: _buildColumnChildren(),
        ),
      ),
    );
  }

  List<Widget> _buildColumnChildren() {
    return [
      Container(
        height: 230,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/1.jpg'),
        )),
      ),
      divider,
      TextAddress(
        textTwo: 'تصفح حسب السيارة',
      ),
      BrowserWidget(context: context, list: _carCategory),
      divider,
      TextAddress(
        textOne: 'الكل',
        textTwo: 'تصفح حسب الماركة',
      ),
      BrowserWidget(context: context, list: _cars),
      divider,
      TextAddress(
        textOne: 'الكل',
        textTwo: 'جديد الوكالات',
      ),
      Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CarContainer(
              carCategory: 'Audi A8',
              image: 'assets/images/1.jpg',
              price: 'تبدأ من 12900 ك.د',
            ),
            CarContainer(
              carCategory: 'Audi A8',
              image: 'assets/images/2.jpg',
              price: 'تبدأ من 12900 ك.د',
            ),
            CarContainer(
              carCategory: 'Audi A8',
              image: 'assets/images/3.jpg',
              price: 'تبدأ من 12900 ك.د',
            ),
          ],
        ),
      ),
      divider,
      TextAddress(
        textOne: 'الكل',
        textTwo: 'فيديو',
      ),
      Container(
        height: 160,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              height: 130,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/6.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 130,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/5.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      )
    ];
  }
}
