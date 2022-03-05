
import 'package:flutter/material.dart';
import 'package:finalwecodeproject/models/wishlist_model.dart';

//import 'package:flutter_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/model.dart';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<wishlistEvent,WishlistState>{
WishlistBloc():super (wishlistLoading());

       @override 
     Stream<WishlistState>mapEventToState(
          wishlistEvent event ,
                 )async*{
          if(event is StartWishlist){
            yield* _mapStartWishlistToState();
          }

          else if (event is AddWishlistProduct){
            yield* _mapAddWishlistProductToState (event,state) ;
          }
          else if (event is RemoveWishlistProduct){
            yield* _mapRemoveWishlistProductToState (event,state) ;
          }
                 }
          Stream<WishlistState> _mapStartWishlistToState( ) async* {
            yield  wishlistLoading();
            try{
              await Future<void>.delayed(Duration(seconds: 1));
              yield const wishlistLoaded();
            }
            catch(_){}

          }
          Stream<WishlistState> _mapAddWishlistProductToState(
            AddWishlistProduct event,
            WishlistState state
           ) async* {

             if(state is wishlistLoaded){
               try{
                 yield wishlistLoaded(wishlist: Wishlist(products: List.from(state.wishlist.products)..add(event.product)));
               }catch(_){}
             }

        }
        Stream<WishlistState>_mapRemoveWishlistProductToState(
            RemoveWishlistProduct event,
            WishlistState state
           ) async* {

             if(state is wishlistLoaded){
               try{
                 yield wishlistLoaded(wishlist: Wishlist(products: List.from(state.wishlist.products)..remove(event.product)));
               }catch(_){}
             }

        }
                 }
