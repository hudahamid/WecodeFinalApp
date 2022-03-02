import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

 
 class Product extends Equatable{
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;
    

     const Product  (
        {
          required this.name,
          required this.category,
          required this.imageUrl,
          required this.price,
          required this.isRecommended,
          required this.isPopular,


        }
     );
  
  
  
  
  @override
  List<Object?> get props =>[
   name,
   category,
   imageUrl,
   price,
   isRecommended,
   isPopular
  ];

static List <Product>products=[
Product(name: 'Soft Drink ', category:'Soft Drinks', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysEUyrZHRc0lu6-Df6G-iWDg1cal6O8RPQr-hzG-3Z9E7IIMo7tPiyeCM6KGtzh5K8vw&usqp=CAU', price: 2.99, isRecommended: true, isPopular: false),

Product(name: 'Soft Drink #2', category: 'Soft Drinks', imageUrl: ' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysEUyrZHRc0lu6-Df6G-iWDg1cal6O8RPQr-hzG-3Z9E7IIMo7tPiyeCM6KGtzh5K8vw&usqp=CAU', price: 2.99, isRecommended:false, isPopular: true),
Product(name: 'Soft Drink #3', category:'Soft Drinks', imageUrl: ' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_3tFDUXvsysmD-0jVO6lrWMh3pZ3m-Iztag&usqp=CAU', price: 2.99, isRecommended: true, isPopular: true),
Product(name: 'Smoothies #1', category:'Smoothies', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysEUyrZHRc0lu6-Df6G-iWDg1cal6O8RPQr-hzG-3Z9E7IIMo7tPiyeCM6KGtzh5K8vw&usqp=CAU', price: 2.99, isRecommended: true, isPopular: false),
Product(name: 'Smoothies #2', category: 'Smoothies', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysEUyrZHRc0lu6-Df6G-iWDg1cal6O8RPQr-hzG-3Z9E7IIMo7tPiyeCM6KGtzh5K8vw&usqp=CAU', price: 2.99, isRecommended:false, isPopular: false),
Product(name: 'Soft Drink #3', category:'Soft Drinks', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysEUyrZHRc0lu6-Df6G-iWDg1cal6O8RPQr-hzG-3Z9E7IIMo7tPiyeCM6KGtzh5K8vw&usqp=CAU', price: 2.99, isRecommended: true, isPopular: true),
//Product(name: 'Soft Drink #3', category:'Soft Drinks', imageUrl: 'asset/soft_drink/sodtdrink3', price: 2.99, isRecommended: true, isPopular: true),


];
 


}