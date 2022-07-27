import 'package:ailoitte/Controller/controller.dart';
import 'package:ailoitte/View/DetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListController controller = Get.put(ListController());
    return Scaffold(
      appBar: PreferredSize(
          child: Obx(
            () => appBar(controller: controller),
          ),
          preferredSize: Size.fromHeight(8.h)),
      body: Obx(() => controller.searchList.isEmpty
          ? const Center(child: Text("Please Search Drinks"))
          : ListView.builder(
              itemCount: controller.searchList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 227, 227, 227),
                      borderRadius: BorderRadius.circular(5.w)),
                  child: InkWell(
                    onTap: () => Get.to(
                        DetailScreen(item: controller.searchList[index])),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                        controller.searchList[index].image.toString(),
                      )),
                      title: Text(
                        controller.searchList[index].name.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle:
                          Text("${controller.searchList[index].category}"),
                    ),
                  ),
                );
              })),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ListController controller;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
        controller.issearch == true
            ? Row(
                children: [
                  IconButton(
                      onPressed: () {
                        controller.searchApi();
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        controller.issearch.value = false;
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      )),
                ],
              )
            : IconButton(
                onPressed: () {
                  controller.issearch.value = true;
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
      ],
      title: controller.issearch == true
          ? TextField(
              onChanged: ((value) {
                controller.searchInput.value = value;
              }),
              textInputAction: TextInputAction.done,
            )
          : Text(
              "Drinks",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            ),
      centerTitle: true,
      toolbarHeight: 13.h,
    );
  }
}
