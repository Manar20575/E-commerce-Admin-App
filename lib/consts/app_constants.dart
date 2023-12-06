import 'package:project/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static const String productImageUrl =
      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';
  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];
  static List<CategoryModel> categoriesList = [
    CategoryModel(
      id: AssetsManager.mobiles,
      image: AssetsManager.mobiles,
      name: 'Phones',
    ),
    CategoryModel(
      id: AssetsManager.cosmetics,
      image: AssetsManager.cosmetics,
      name: 'Cosmetics',
    ),
    CategoryModel(
      id: 'Electronics',
      image: AssetsManager.electronics,
      name: 'Electronics',
    ),
    CategoryModel(
      id: 'Shoes',
      image: AssetsManager.shoes,
      name: 'Shoes',
    ),
    CategoryModel(
      id: 'Watches',
      image: AssetsManager.watch,
      name: 'Watches',
    ),
    CategoryModel(
      id: 'Laptops',
      image: AssetsManager.pc,
      name: 'Laptops',
    ),
    CategoryModel(
      id: 'Clothes',
      image: AssetsManager.fashion,
      name: 'Clothes',
    ),
    CategoryModel(
      id: 'Books',
      image: AssetsManager.bookImg,
      name: 'Books',
    ),
  ];
}
