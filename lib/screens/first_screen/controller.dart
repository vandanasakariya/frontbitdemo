import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:frontbitdemo/screens/first_screen/service.dart';
import 'package:get/get.dart';

import 'modal.dart';

class FirstApiController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getProductMethod();

  }
  List result=[];


 Rx<User?> firstApiModalController = User().obs;

  Future<List> getProductMethod() async {
    final result = await FirstApiService.getPosts();
    log("resultttttttttt : ${result[1].title}");

   firstApiModalController.value=result as User? ;
    print("yyyyyyy----${firstApiModalController.value?.title}");
    return result;

  }


}
