import 'dart:convert';

import 'package:fitzone/Model/food_details_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FoodDetailController extends GetxController {
  List<FoodDetails>? _fooddetails;
  List<FoodDetails>? get fooddetails => _fooddetails;
  void getFoodDetails(String id) async {
    var response = await http.get(Uri.parse(
        "https://appy.trycatchtech.com/v3/fit_zone/single_food?id=$id"));
    if (response.statusCode == 200) {
      _fooddetails = FoodDetails.ofFoodDetails(jsonDecode(response.body));
      update();
    }
  }
}
