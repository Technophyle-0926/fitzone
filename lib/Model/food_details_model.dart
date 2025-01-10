class FoodDetails {
  String? id;
  String? name;
  String? description;
  String? image;
  String? calories;
  String? sodium;
  String? fats;
  String? carbs;
  String? protein;

  FoodDetails(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.calories,
      this.sodium,
      this.fats,
      this.carbs,
      this.protein});

  FoodDetails.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    image = json["image"];
    calories = json["calories"];
    sodium = json["sodium"];
    fats = json["fats"];
    carbs = json["carbs"];
    protein = json["protein"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["description"] = description;
    data["image"] = image;
    data["calories"] = calories;
    data["sodium"] = sodium;
    data["fats"] = fats;
    data["carbs"] = carbs;
    data["protein"] = protein;
    return data;
  }

  static List<FoodDetails> ofFoodDetails(List value) {
    return value.map((e) => FoodDetails.fromJson(e)).toList();
  }
}
