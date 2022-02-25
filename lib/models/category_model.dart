import 'package:equatable/equatable.dart';

class Category extends Equatable{
final String name;
final String imageurl;

const Category({required this.name,required this.imageurl});


  @override
  // TODO: implement props
  List<Object?> get props => [name,imageurl];

  static List<Category> categories=[
   Category(name: 'Soft Drinks', imageurl: 'https://5.imimg.com/data5/EQ/UU/IR/SELLER-107310956/1l-coca-cola-cold-drink-500x500.jpg'),

   Category(name: 'smoothies', imageurl: 'https://img.taste.com.au/gVht4kN-/taste/2020/01/jan20_easy-berry-smoothie-taste-156331-1.jpg'),
   Category(name: 'Water', imageurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQW6b-wFNunWobmdTtiJ7SvxTtAbViNNdUhD0ww6fbb85Ipop28AnshREw5NH22HWegI0&usqp=CAU')











  ];
  
  }