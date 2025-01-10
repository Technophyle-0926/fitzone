import 'package:fitzone/Controller/food_list_controller.dart';
import 'package:fitzone/View/food_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodView extends StatefulWidget {
  const FoodView({super.key});

  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  FoodListController foodListController = Get.put(FoodListController());

  @override
  void initState() {
    foodListController.getFoodList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Featured Food"),
        centerTitle: true,
      ),
      body: GetBuilder<FoodListController>(
        builder: (foodListController) {
          return foodListController.foodlist == null
              ? Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 25,
                      childAspectRatio: .7,
                    ),
                    itemCount: foodListController.foodlist!.length,
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(
                            () => FoodDetailsView(),
                            arguments: {
                              "id": "${foodListController.foodlist![i].id}",
                              "name": "${foodListController.foodlist![i].name}"
                            },
                          );
                        },
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.network(
                                    foodListController.foodlist![i].image ?? '',
                                  ),
                                ),
                                Text(
                                  foodListController.foodlist![i].name ?? '',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Calories: ${foodListController.foodlist![i].calories ?? ''} Kcal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "100 gm",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
