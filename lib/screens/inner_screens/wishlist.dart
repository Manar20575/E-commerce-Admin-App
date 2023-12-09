import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:project/services/assets_manager.dart';
import 'package:project/widgets/empty_bag.dart';
import 'package:project/widgets/products/product_widget.dart';
import 'package:project/widgets/title_text.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = '/wishlistscreen';
  const WishListScreen({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.shoppingBasket,
              title: "Your Wishlist is empty",
              subtitle:
                  'Looks like you didn\'t add anything yet to your cart \ngo ahead and start shopping now',
              buttonText: "Shop Now",
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const TitlesTextWidget(label: "Wishlist (5)"),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.shoppingCart),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_forever_rounded,
                      color: Colors.red,
                    ))
              ],
            ),
            body: DynamicHeightGridView(
              itemCount: 220,
              builder: ((context, index) {
                return const ProductWidget();
              }),
              crossAxisCount: 2,
            ),
          );
  }
}
