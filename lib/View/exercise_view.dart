import 'package:fitzone/Controller/exercise_list_controller.dart';
import 'package:fitzone/Model/image_model.dart';
import 'package:fitzone/View/exercise_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciseView extends StatefulWidget {
  const ExerciseView({super.key});

  @override
  State<ExerciseView> createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  ExerciseListController exerciseListController =
      Get.put(ExerciseListController());
  List<ImageList> images = [
    ImageList(imageurl: "assets/Updates/Groups/Group 459@4x.png"),
    ImageList(imageurl: "assets/Updates/Groups/Group 434@4x.png"),
    ImageList(imageurl: "assets/Updates/Groups/Group 458@4x.png"),
  ];

  @override
  void initState() {
    exerciseListController.getExerciseList([1, 2]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Exercises"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 310,
                  child: SearchBar(
                    enabled: false,
                    hintText: "Type here to search something",
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                  child: Icon(
                    Icons.filter_alt_outlined,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GetBuilder<ExerciseListController>(
                builder: (exerciseListController) {
              return exerciseListController.exerciselist == null
                  ? Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2.45,
                          ),
                          itemCount:
                              exerciseListController.exerciselist!.length,
                          itemBuilder: (context, i) {
                            return GestureDetector(
                              onTap: () {
                                Get.to(() => ExerciseDetailsView(), arguments: {
                                  "id": exerciseListController
                                      .exerciselist![i].id,
                                  "name": exerciseListController
                                      .exerciselist![i].name,
                                  "category": exerciseListController
                                          .exerciselist![i].catDifficulty ??
                                      '',
                                });
                              },
                              child: Card(
                                child: ClipRRect(
                                  child: Image.asset(images[i].imageurl ?? ''),
                                ),
                              ),
                            );
                          }),
                    );
            }),
          ),
        ],
      ),
    );
  }
}
