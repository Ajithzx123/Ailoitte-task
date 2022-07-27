
import 'package:json_annotation/json_annotation.dart';

 part 'dataModel.g.dart';
@JsonSerializable()
class Data {
  @JsonKey(name : "drinks")
  List<Drinks>? drinks;

  Data({this.drinks});

     factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 
}
@JsonSerializable()
class Drinks {
   @JsonKey(name : "strDrink")
  String? name;

  @JsonKey(name : "strDrinkThumb")
  String? image;

  @JsonKey(name : "strInstructions")
  String? description;

  @JsonKey(name : "strIngredient1")
  String? ingredient1;

  @JsonKey(name : "strIngredient2")
  String? ingredient2;

   @JsonKey(name : "strAlchololic")
  String? alcoholic;

   @JsonKey(name : "strCategory")
  String? category;

  Drinks();

  factory Drinks.fromJson(Map<String, dynamic> json) => _$DrinksFromJson(json);
  Map<String, dynamic> toJson() => _$DrinksToJson(this);
  }

