import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.65,
      physics:NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                            "-20%",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )
                        )
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "ItemPage");
                    },
                    child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "images/$i.jpg",
                          height: 120,
                          width: 120,
                        )
                    )
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Programming Contest",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        )
                    )
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "Tamim Shahriar Subeen",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "\$20",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      InkWell(
                          onTap: (){
                            //Navigator.pushNamed(context, "CartPage");
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Text(
                                      "Buy Now",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )
                                  )
                                ],

                              )
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}