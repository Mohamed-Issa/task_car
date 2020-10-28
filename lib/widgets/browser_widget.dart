import 'package:flutter/material.dart';

class BrowserWidget extends StatelessWidget {
  final BuildContext context;
  final List list;

  const BrowserWidget({Key key, this.context, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(list[index].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  list[index].name ?? '',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}
