import 'package:ailoitte/View/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main(List<String> args) {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return  GetMaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
