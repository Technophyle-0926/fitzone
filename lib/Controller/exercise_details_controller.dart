import 'dart:convert';

import 'package:fitzone/Model/exercise_details_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ExerciseDetailsController extends GetxController {
  List<ExerciseDetails>? _exercisedetails;
  List<ExerciseDetails>? get exercisedetails => _exercisedetails;
  void getExerciseDetails(String id) async {
    var response = await http.get(Uri.parse(
        "https://appy.trycatchtech.com/v3/fit_zone/single_exercise?id=$id"));
    if (response.statusCode == 200) {
      _exercisedetails =
          ExerciseDetails.toExerciseList(jsonDecode(response.body));
      update();
    }
  }
}
