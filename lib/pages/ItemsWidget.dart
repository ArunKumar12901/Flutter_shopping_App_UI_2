import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Top",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              "See All",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black54),
            )
          ]),
        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for (int i = 1; i < 8; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                    )
                  ],
                ),
                child: Column(
                  children: [

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Image.asset(
                        "assets/$i.png",
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Titem Tital",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Fresh Fruits 2 KG",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$20",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.shopping_cart, color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
          ],
        )
      ],
    );
  }
}
