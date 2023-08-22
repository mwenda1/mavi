import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Layout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenheight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
  static getHeight(double pixels){
    double x = getScreenheight()/pixels;
    return getScreenheight()/x;
  }
  static getWidth(double pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }
}