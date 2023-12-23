import 'package:flutter/material.dart';
import 'package:foodhub/widgets/_widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30.0, left: 10.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mediterrneam", style: AppWidget.boldTextFeildStyle()),
                    Text(
                      "Chichpea Salad",
                      style: AppWidget.mediumboldTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }

                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.mediumboldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
                "loremoidehgewurhunyegcrvfefecjenjfhreyfuewncjodshibfcudshfygewgcbjsfhdgywebhcbdsjsnv",
                maxLines: 3,
                style: AppWidget.lightboldTextFeildStyle(),
                ),
                Row(children: [
                  Text("Delivery Time",style: AppWidget.semiboldTextFeildStyle(),),
                  SizedBox(
                  width: 120.0,
                ),
                  Icon(Icons.alarm,color: Color.fromARGB(255, 234, 112, 5)),
                  SizedBox(width: 5.0,),
                  Text("30 min",style: AppWidget.semiboldTextFeildStyle(),)
                ],),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [Column(children: [
                    Text("Total Bill",style:AppWidget.semiboldTextFeildStyle(),),
                    Text(
                        "\$45",
                        style: AppWidget.HeadlineboldTextFeildStyle(),
                      ),
                  ],),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Color.fromARGB(255, 234, 112, 5) ),
                    child: Row(children: [
                      Text("Add to Cart",style: TextStyle(color: Colors.black,fontSize: 11.0,fontFamily: 'Poppins'),),
                      SizedBox(width: 20.0,),
                      Container(
                        padding: EdgeInsets.all(3),
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                      ),
                    ]),
                  )
                  ],),
                )
          ],
        ),
      ),
    );
  }
}
