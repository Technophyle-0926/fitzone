import 'dart:convert';

import 'package:fitzone/Model/exercise_list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ExerciseListController extends GetxController {
  List<ExerciseList>? _exerciselist;
  List<ExerciseList>? get exerciselist => _exerciselist;
  void getExerciseList(List<int> cat) async {
    String category = cat.join(',');
    var response = await http.get(Uri.parse(
        "https://appy.trycatchtech.com/v3/fit_zone/exercise_list?category_id=$category"));
    if (response.statusCode == 200) {
      _exerciselist = ExerciseList.ofExerciseList(jsonDecode(response.body));
      update();
    }
  }
}
