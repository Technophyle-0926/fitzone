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

  double stringtodouble(String? strValue) {
    double intValue;
    try {
      intValue = double.parse(strValue!);
      return intValue / 100;
    } catch (e) {
      printError(info: "Could not convert String to Integer");
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      backgroundColor: Colors.white,
      body: GetBuilder<FoodDetailController>(
        builder: (foodDetailController) {
          return foodDetailController.fooddetails == null
              ? Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Center(
                        child: Image.network(
                          foodDetailController.fooddetails![0].image ?? '',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            foodDetailController.fooddetails![0].name ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "100.00 gm",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 16,
                        ),
                        child: Text(
                          foodDetailController.fooddetails![0].description ??
                              '',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/Assets/Fire/burn.png",
                            height: 40,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calories",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "${foodDetailController.fooddetails![0].calories ?? ''} Kcal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/Assets/Na - sodium/sodium 1@3x.png",
                            height: 40,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sodium",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  foodDetailController.fooddetails![0].sodium ??
                                      '',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Fats",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: LinearProgressIndicator(
                          value: stringtodouble(
                              foodDetailController.fooddetails![0].fats),
                          color: Colors.greenAccent,
                          backgroundColor: Colors.greenAccent.withAlpha(20),
                          minHeight: 30,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      Text(
                        "${foodDetailController.fooddetails![0].fats} g",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Carbs",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amberAccent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: LinearProgressIndicator(
                          value: stringtodouble(
                              foodDetailController.fooddetails![0].carbs),
                          color: Colors.amberAccent,
                          backgroundColor: Colors.amberAccent.withAlpha(20),
                          minHeight: 30,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      Text(
                        "${foodDetailController.fooddetails![0].carbs} g",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Carbs",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.redAccent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: LinearProgressIndicator(
                          value: stringtodouble(
                              foodDetailController.fooddetails![0].protein),
                          color: Colors.redAccent,
                          backgroundColor: Colors.redAccent.withAlpha(20),
                          minHeight: 30,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      Text(
                        "${foodDetailController.fooddetails![0].protein} g",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
