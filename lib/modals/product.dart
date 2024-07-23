import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
        required this.title,
        required this.description,
        required this.price,
        required this.size,
        required this.id,
        required this.color});
}

List<Product> products = [

  Product(
      id: 1,
      title: "Belt Bag",
      price: 299,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),

  Product(
      id: 3,
      title: "Hang Top",
      price: 350,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),


  Product(
    id: 6,
    title: "Office Code",
    price: 199,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 204,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 2,
      title: "Office Code",
      price: 230,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "Lite Hang Top",
      price: 134,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 5,
      title: "Office Code",
      price: 214,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
];

String dummyText =
    "Elevate your style with this chic and versatile  leather bag  shopping bag. Crafted from premium, high-quality leather, this bag boasts a sophisticated yet practical design that is perfect for both everyday use and special occasions.";