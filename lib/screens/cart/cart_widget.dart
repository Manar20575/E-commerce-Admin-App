import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:project/screens/cart/quantity_btm_sheet.dart';
import 'package:project/widgets/title_text.dart';

import '../../widgets/subtitle_text.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FittedBox(
        child: IntrinsicWidth(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: FancyShimmerImage(
            imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
            height: size.height * 0.2,
            width: size.height * 0.2,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        IntrinsicWidth(
            child: Column(children: [
          Row(
            children: [
              SizedBox(
                  width: size.width * 0.6,
                  child: TitlesTextWidget(
                    label: "Title" * 10,
                    maxLines: 2,
                  )),
              Column(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconlyLight.heart,
                      color: Colors.red,
                    )),
              ])
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SubtitleTextWidget(
                label: "16\$",
                fontSize: 20,
                color: Colors.blue,
              ),
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return const QuantityBottomSheetWidget();
                        });
                  },
                  icon: const Icon(IconlyLight.arrowDown),
                  label: const Text("Qty:6")),
            ],
          )
        ]))
      ]),
    )));
  }
}
