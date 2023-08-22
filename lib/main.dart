import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mavi/routes/routes.dart';
import 'package:mavi/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      initialRoute: RoutesClass.getBottomBarRoute(),
      //initialRoute: RoutesClass.getScansRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
