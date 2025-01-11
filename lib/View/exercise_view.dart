import 'package:fitzone/Controller/exercise_list_controller.dart';
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
      body:
          GetBuilder<ExerciseListController>(builder: (exerciseListController) {
        return exerciseListController.exerciselist == null
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2.3,
                    ),
                    itemCount: exerciseListController.exerciselist!.length,
                    itemBuilder: (context, i) {
                      return Card();
                    }),
              );
      }),
    );
  }
}
