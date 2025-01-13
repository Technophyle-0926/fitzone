class ExerciseDetails {
  String? id;
  String? name;
  String? exerciseType;
  String? exerciseEquipments;
  String? exerciseMuscles;
  String? description;
  String? image;
  String? timimg;
  String? url;
  String? steps;

  ExerciseDetails(
      {this.id,
      this.name,
      this.exerciseType,
      this.exerciseEquipments,
      this.exerciseMuscles,
      this.description,
      this.image,
      this.timimg,
      this.url,
      this.steps});

  ExerciseDetails.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    exerciseType = json["exercise_type"];
    exerciseEquipments = json["exercise_equipments"];
    exerciseMuscles = json["exercise_muscles"];
    description = json["description"];
    image = json["image"];
    timimg = json["timimg"];
    url = json["url"];
    steps = json["steps"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["exercise_type"] = exerciseType;
    data["exercise_equipments"] = exerciseEquipments;
    data["exercise_muscles"] = exerciseMuscles;
    data["description"] = description;
    data["image"] = image;
    data["timimg"] = timimg;
    data["url"] = url;
    data["steps"] = steps;
    return data;
  }

  static List<ExerciseDetails> toExerciseList(List value) {
    return value.map((e) => ExerciseDetails.fromJson(e)).toList();
  }
}
