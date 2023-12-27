import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final String imagesrc;
  final double imageHeigth ;
  const MyImage({super.key, required this.imagesrc,required this.imageHeigth});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
     imagesrc ),height:imageHeigth,);

  }
}