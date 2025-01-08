import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Groovy Shorts',
    price: 12,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '2',
    title: 'Karati Kit',
    price: 34,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '3',
    title: 'Denim Jeans', 
    price: 54,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '4',
    title: 'Red Backpack',
    price: 13,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '5',
    title: 'Drum and Sticks',
    price: 29,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '6',
    title: 'Blue suitcase',
    price: 54,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '7',
    title: 'Roller Skates',
    price: 72,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '8',
    title: 'Electric Guitar',
    price: 19,
    image: 'assets/products/shorts.png',
  ),
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reducedProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 50).toList();
});

