
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finalwecodeproject/models/wishlist_model.dart';

import 'package:equatable/equatable.dart';

import '../../models/model.dart';

 part of'wishlist_bloc.dart';

abstract class wishlistEvent extends Equatable{
  const wishlistEvent();

 @override 
  List<Object> get props =>[];
}

class StartWishlist extends wishlistEvent{}

class AddWishlistProduct extends wishlistEvent{
  final Product product;
  const AddWishlistProduct(this.product);

  
 @override 
  List<Object> get props =>[product];

}
class RemoveWishlistProduct extends wishlistEvent{
  final Product product;
  const RemoveWishlistProduct(this.product);

  
 @override 
  List<Object> get props =>[product];

}