import 'dart:convert';

import 'package:fitzone/Model/food_list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FoodListController extends GetxController {
  List<FoodList>? _foodlist;
  List<FoodList>? get foodlist => _foodlist;
  List<FoodList>? _filteredfoodlist;
  List<FoodList>? get filteredfoodlist => _filteredfoodlist;
  void getFoodList() async {
    var response = await http
        .get(Uri.parse("https://appy.trycatchtech.com/v3/fit_zone/food_list"));
    if (response.statusCode == 200) {
      _foodlist =
          _filteredfoodlist = FoodList.ofFoodList(jsonDecode(response.body));
      update();
    }
  }

  void filteredFoodList(value) {
    _filteredfoodlist = foodlist
        ?.where(
            (food) => food.name!.isCaseInsensitiveContainsAny(value.toString()))
        .toList();
    update();
  }
}
