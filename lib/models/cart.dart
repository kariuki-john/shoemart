import 'package:flutter/material.dart';
import 'package:shoemart/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '2500',
        description:
            'The best outfit shoe for gentlemen, kick off in a new style',
        imagePath: 'lib/images/best.jpg'),
    Shoe(
        name: 'Nike',
        price: '3500',
        description:
            'The best outfit shoe for gentlemen, kick off in a new style',
        imagePath: 'lib/images/niko.jpg'),
    Shoe(
        name: 'Freak Ladies',
        price: '3500',
        description: 'Ladies chioce, kick off in a new style',
        imagePath: 'lib/images/shoe1.png'),
    Shoe(
        name: 'Freak Sneakers',
        price: '1500',
        description: ' kick off with the best sports shoes',
        imagePath: 'lib/images/shoe7.png'),
    Shoe(
        name: 'Best sneakers',
        price: '1500',
        description:
            ' You got the speed-lace up in shoes that enhance walking style',
        imagePath: 'lib/images/shoe3.jpg'),
    Shoe(
        name: 'Nike',
        price: '3500',
        description:
            ' You got the speed-lace up in shoes that enhance walking style',
        imagePath: 'lib/images/nike1.jpg'),
    Shoe(
        name: 'Nike',
        price: '2500',
        description:
            ' You got the speed-lace up in shoes that enhance walking style',
        imagePath: 'lib/images/nike2.jpg'),
  ];
  //list of shoes in cart
  List<Shoe> userCart = [];
  // list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
