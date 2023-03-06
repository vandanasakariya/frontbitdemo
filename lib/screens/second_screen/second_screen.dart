import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:frontbitdemo/utils/navigation.dart';
import 'package:frontbitdemo/utils/routes.dart';
import 'package:frontbitdemo/utils/sizeutils.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: SizeUtils.horizontalBlockSize * 100,
                  height: SizeUtils.horizontalBlockSize * 215,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("asset/images/new.png"),
                        fit: BoxFit.cover),
                  ),
                  //Conta ,
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Row(
                  
                    children: [
                      Container(
                        width: SizeUtils.horizontalBlockSize * 10,
                        height: SizeUtils.horizontalBlockSize * 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: IconButton(
                            onPressed: () {
                              Navigation.pushNamed(Routes.firstPage);
                            }, icon: Icon(Icons.arrow_back)),
                      ),
                      SizedBox(width: SizeUtils.horizontalBlockSize*35,),
                      Text(
                        "Detail",
                        style: TextStyle(fontSize: SizeUtils.fSize_16()),
                      ),
                      SizedBox(width: SizeUtils.horizontalBlockSize*20,),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ), //Conta)
                Positioned(
                  bottom: SizeUtils.horizontalBlockSize * -0,
                  left: SizeUtils.horizontalBlockSize * 10,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeUtils.horizontalBlockSize * 5),
                              child: Text(
                                "Dome Table",
                                style: TextStyle(
                                    fontSize: SizeUtils.fSize_17(),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeUtils.horizontalBlockSize * 6,
                                  vertical: SizeUtils.horizontalBlockSize * 2),
                              child: Column(
                                children: [
                                  Text(
                                    "price",
                                    style: TextStyle(
                                        fontSize: SizeUtils.fSize_13(),
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "price",
                                    style: TextStyle(
                                        fontSize: SizeUtils.fSize_13()),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeUtils.horizontalBlockSize * 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.ac_unit_outlined),
                              Text(
                                "Colors",
                                style:
                                    TextStyle(fontSize: SizeUtils.fSize_16()),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.brown.shade300,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.orange.shade300,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green.shade300,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeUtils.horizontalBlockSize * 9,
                              left: SizeUtils.horizontalBlockSize * 5),
                          child: AutoSizeText(
                            "The maxLines parameter works like you are used to with the Text widget. If there is no maxLines parameter specified, the AutoSizeText only fits the text according to the available width and height.",
                            style: TextStyle(
                                fontSize: SizeUtils
                                    .fSize_16()), /*Text(
                              "Description",
                              style: TextStyle(fontSize: SizeUtils.fSize_16()),
                            ),*/
                          ),
                        ),
                      ],
                    ),
                    width: SizeUtils.verticalBlockSize * 40.5,
                    height: SizeUtils.horizontalBlockSize * 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(25)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -0,
                  left: 90,
                  child: Container(
                    alignment: Alignment.center,
                    width: SizeUtils.verticalBlockSize * 50,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: SizeUtils.verticalBlockSize * 10),
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                            fontSize: SizeUtils.fSize_20(),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: SizeUtils.horizontalBlockSize * 25,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(35)),
                      color: Color(0xFF112233),
                    ),
                  ),
                ),
              ], //<Widget>[]
            ), //Stack
          ],
        ),
      ),
    );
  }
}
