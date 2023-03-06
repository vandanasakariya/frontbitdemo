import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import 'modal.dart';

class FirstApiService {

  static Future<List> getPosts() async {
    final String postsURL = "https://fakestoreapi.com/products";
    var res = await get(Uri.parse(postsURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

    /*  List<User> posts = body
          .map(
            (dynamic item) => User.fromJson(item),
      )
          .toList();
*/
      return body;
    } else {
      throw "Unable to retrieve posts.";
    }
  }


 /* static Future<List<User>> FirstApiServiceMethod() async {
      final response = await http.get(Uri.parse(
          'https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        final List result = json.decode(response.body);
        return result.map((e) => User.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    }*/
   /* const url = 'https://fakestoreapi.com/products';
    final response = await http.get(Uri.parse(url));
    return FirstApiModal.fromJson(json.decode(response.body));
    final List result = json.decode(response.body);
    return result.map((e) => FirstApiModal.fromJson(e)).toList();
    //return FirstApiModal.fromJson(json.decode(response.body));*/

  }

