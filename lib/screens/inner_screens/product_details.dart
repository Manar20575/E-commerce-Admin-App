import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:project/consts/app_constants.dart';
import 'package:project/services/assets_manager.dart';
import 'package:project/widgets/app_name_text.dart';
import 'package:project/widgets/subtitle_text.dart';
import 'package:project/widgets/title_text.dart';

class productDetails extends StatefulWidget {
  static const routName = '/ProductDetails';
  const productDetails({super.key});

  @override
  State<productDetails> createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            title: const AppNameTextWidget(
              fontSize: 25,
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
              },
              icon: const Icon(Icons.arrow_back_ios, size: 18),
            )),
        body: Column(
          children: [
            FancyShimmerImage(
              imageUrl: AppConstants.productImageUrl,
              height: size.height * 0.38,
              width: double.infinity,
              boxFit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          "Title" * 20,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      const SubtitleTextWidget(
                        label: "166.5\$",
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Material(
                          color: Colors.teal.shade200,
                          shape: const CircleBorder(),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(IconlyLight.heart),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: kBottomNavigationBarHeight - 10,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 88, 208, 184),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular((30)),
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.add_shopping_cart),
                              label: const Text('Login'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitlesTextWidget(label: "About this item"),
                      SubtitleTextWidget(label: "In phones")
                    ],
                  ),
                  SubtitleTextWidget(label: "description" * 15),
                ],
              ),
            )
          ],
        ));
  }
}
