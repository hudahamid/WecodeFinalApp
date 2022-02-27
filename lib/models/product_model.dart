import 'package:equatable/equatable.dart';

 
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
Product(name: 'Soft Drink #1', category:'Soft Drinks', imageUrl: imageUrl, price: 2.99, isRecommended: true, isPopular: false),
Product(name: 'Soft Drink #2', category: 'Soft Drinks', imageUrl: imageUrl, price: 2.99, isRecommended:false, isPopular: true),
Product(name: 'Soft Drink #3', category:'Soft Drinks', imageUrl: imageUrl, price: 2.99, isRecommended: true, isPopular: true),
Product(name: 'Smoothies #1', category:'Smoothies', imageUrl: imageUrl, price: 2.99, isRecommended: true, isPopular: false),
Product(name: 'Smoothies #2', category: 'Smoothies', imageUrl: imageUrl, price: 2.99, isRecommended:false, isPopular: false),
Product(name: 'Soft Drink #3', category:'Soft Drinks', imageUrl: imageUrl, price: 2.99, isRecommended: true, isPopular: true),


]


}