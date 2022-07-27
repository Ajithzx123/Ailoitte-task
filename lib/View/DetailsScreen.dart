import 'package:ailoitte/Model/dataModel.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailScreen extends StatelessWidget {
  final Drinks item;
  const DetailScreen({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: GestureDetector(
              child: const Icon(Icons.arrow_back),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: 30.h,
                      width: 75.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                item.image.toString(),
                              ),
                              fit: BoxFit.cover),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.w)),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name!,
                          //  overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          item.category!,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 82, 82, 82)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          item.description!,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Ingrediants : ${item.ingredient1}, ${item.ingredient2}",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 82, 82, 82)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
