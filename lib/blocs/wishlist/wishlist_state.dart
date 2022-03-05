import 'package:finalwecodeproject/models/wishlist_model.dart';
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable{
const WishlistState();
@override
List<Object> get props =>[];

}

class wishlistLoading extends WishlistState{}

class wishlistLoaded extends WishlistState{
  final Wishlist wishlist;
  const wishlistLoaded({this.wishlist=const Wishlist()});
     
     @override
  List<Object> get props=>[wishlist];

}

class wishlistError extends WishlistState{}