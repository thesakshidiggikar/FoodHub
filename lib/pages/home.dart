import 'package:flutter/material.dart';
import 'package:foodhub/pages/details.dart';
import 'package:foodhub/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //click on button
  bool icecream = false, pizza = false, salad = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello New User!",
                      style: AppWidget.boldTextFeildStyle()),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 7.0,
              ),
              Text("Delicious Food!",
                  style: AppWidget.HeadlineTextFeildStyle()),
              Text("Discover and Get Greate Food!",
                  style: AppWidget.LightTextFeildStyle()),
              SizedBox(height: 20.0),
              Container(
                  margin: EdgeInsets.only(right: 20.0), child: showItem()),
              SizedBox(
                height: 14.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(6),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              //salad edges adjusment
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("images/salad2.png",
                                    height: 100, width: 100, fit: BoxFit.cover),
                                Text("Veggie Teco Hash",
                                    style: AppWidget.semiBoldTextFeildStyle()),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Fresh and Healthy",
                                    style: AppWidget.LightTextFeildStyle()),
                                SizedBox(
                                  height: 1.0,
                                ),
                                Text(
                                  "\$25",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      margin: EdgeInsets.all((6)),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            //salad edges adjusment
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/salad2.png",
                                  height: 100, width: 100, fit: BoxFit.cover),
                              Text("Veggie Tech Hash",
                                  style: AppWidget.semiBoldTextFeildStyle()),
                              SizedBox(
                                height: 1.0,
                              ),
                              Text("Fresh and Healthy",
                                  style: AppWidget.lightboldTextFeildStyle()),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "\$25",
                                style: AppWidget.semiboldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad2.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          children: [
                            Container(
                                //adjusting the title
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Mediterranem Chickpea Salad",
                                  style: AppWidget.mediumboldTextFeildStyle(),
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              //adjusting the title
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Hone Goot Cheese",
                                style: AppWidget.lightboldTextFeildStyle(),
                              ),
                            ),
                            Container(
                              //adjusting the title
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$40",
                                style: AppWidget.semiboldTextFeildStyle(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
