import 'dart:convert';

List<Restaurant> dataFromJson(String str) =>
    List<Restaurant>.from(json.decode(str).map((x) => Restaurant.fromJson(x)));

String dataToJson(List<Restaurant> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Restaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  Menus menus;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.menus,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"].toDouble(),
        menus: Menus.fromJson(json["menus"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "city": city,
        "rating": rating,
        "menus": menus.toJson(),
      };
}

class Menus {
  Menus({
    required this.foods,
    required this.drinks,
  });

  List<MenuItem> foods;
  List<MenuItem> drinks;

  factory Menus.fromJson(Map<String, dynamic> json) => Menus(
        foods:
            List<MenuItem>.from(json["foods"].map((x) => MenuItem.fromJson(x))),
        drinks: List<MenuItem>.from(
            json["drinks"].map((x) => MenuItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
      };
}

class MenuItem {
  MenuItem({
    required this.name,
  });

  String name;

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
