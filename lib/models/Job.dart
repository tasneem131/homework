

import 'package:homework/models/category.dart';

class Job {
  String id;
  String name;
  double lowerPrice;
  double deliveryPrice;
  String iconURL;
  double rating;
  bool isAdd;
  String status;
  List<Category> categories;

  Job({
    this.id,
    this.categories,
    this.iconURL,
    this.isAdd,
    this.name,
    this.rating,
    this.status,
  });

  String getCategorisNames() {
    String result = "";
    for (int i = 0; i < categories.length; i++) {
      if (result == "")
        result = categories[i].name;
      else
        result = result + ", " + categories[i].name;
    }
    return result;}
}
