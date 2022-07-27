import 'package:ailoitte/Model/dataModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  RxString searchInput = "".obs;

  RxBool issearch = false.obs;

  RxList<Drinks> searchList = <Drinks>[].obs;

  final baseUrl = "https://thecocktaildb.com/api/json/v1/1/search.php?s=";

  searchApi() async {
    Dio dio = Dio();

    try {
      if (searchInput == "") {
        Get.snackbar("Search Empty", "Please search anything",
            backgroundColor: Colors.red);
      } else {
        var apiUrl = ("$baseUrl$searchInput");

        final response = await dio.get(apiUrl);

        Data products = Data.fromJson(response.data);

        searchList.value = products.drinks!;

        return products;
      }
    } catch (e) {
      Get.snackbar("No Data", "Result not found", backgroundColor: Colors.red);
    }
  }
}
