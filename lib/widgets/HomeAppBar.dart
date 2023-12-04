import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Icon(
              Icons.sort,
              size: 30,
              color: Colors.blue,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                    "Alamin's Book Store",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )
                )
            ),
            Spacer(),
            Badge(
                backgroundColor: Colors.red,
                //padding: EdgeInsets.all(2),
                label: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                    )
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(
                        context,
                        "CartPage",
                      );
                    },
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                      color: Colors.blue,
                    )
                )
            )
          ],
        )
    );
  }
}