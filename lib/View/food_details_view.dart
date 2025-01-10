import 'package:fitzone/Controller/food_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodDetailsView extends StatefulWidget {
  const FoodDetailsView({super.key});

  @override
  State<FoodDetailsView> createState() => _FoodDetailsViewState();
}

class _FoodDetailsViewState extends State<FoodDetailsView> {
  Map food = Get.arguments;
  FoodDetailController foodDetailController = Get.put(FoodDetailController());

  @override
  void initState() {
    foodDetailController.getFoodDetails(food["id"]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: Get.back,
          child: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          food["name"],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: null,
    );
  }
}
