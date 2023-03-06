import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontbitdemo/screens/first_screen/service.dart';
import 'package:frontbitdemo/utils/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../utils/navigation.dart';
import '../../utils/sizeutils.dart';
import 'controller.dart';
import 'modal.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

//int index=0;
  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.verticalBlockSize * 1,
              vertical: SizeUtils.horizontalBlockSize * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("asset/images/new.png"),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeUtils.horizontalBlockSize * 6,
                    left: SizeUtils.horizontalBlockSize * 3),
                child: Text("New Arrivals",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeUtils.fSize_18())),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigation.pushNamed(Routes.secondScreen);
                  },
                  child: FutureBuilder<List<User>>(
                      builder: (context, snapshot) {
                    return Padding(
                      padding:  EdgeInsets.only(top: SizeUtils.verticalBlockSize*2),
                      child: GridView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          print("aaaaaaaaaa${snapshot.data?.length}");
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: SizeUtils.horizontalBlockSize * 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage("asset/images/new.png"),/*NetworkImage(
                                          "${snapshot.data?[index].image}",
                                        ),*/
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: SizeUtils.horizontalBlockSize * 4),
                                  child: Text("Dome Table Lamp", style: TextStyle(fontSize: SizeUtils.fSize_16()),),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: SizeUtils.horizontalBlockSize * 3),
                                  child: Row(
                                    children: [
                                      Text("₹ 599", style: TextStyle(fontSize: SizeUtils.fSize_14()),),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1 / 1.8,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 1),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
