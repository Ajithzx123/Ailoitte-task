// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) =>
    Data(
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => Drinks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };

Drinks _$DrinksFromJson(Map<String, dynamic> json) => Drinks()
  ..name = json['strDrink'] as String?
  ..image = json['strDrinkThumb'] as String?
  ..description = json['strInstructions'] as String?
  ..ingredient1 = json['strIngredient1'] as String?
  ..ingredient2 = json['strIngredient2'] as String?
  ..alcoholic = json['strAlchololic'] as String?
  ..category = json['strCategory'] as String?;

Map<String, dynamic> _$DrinksToJson(Drinks instance) => <String, dynamic>{
      'strDrink': instance.name,
      'strDrinkThumb': instance.image,
      'strInstructions': instance.description,
      'strIngredient1': instance.ingredient1,
      'strIngredient2': instance.ingredient2,
      'strAlchololic': instance.alcoholic,
      'strCategory': instance.category,
    };
