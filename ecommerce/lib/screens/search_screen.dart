import 'dart:developer';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:project/widgets/products/product_widget.dart';
import 'package:project/widgets/title_text.dart';

import '../services/assets_manager.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchTextController;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
                title: const TitlesTextWidget(label: "Shopping basket"),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManager.shoppingCart),
                )),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                      controller: searchTextController,
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                searchTextController.clear();
                                FocusScope.of(context).unfocus();
                              });
                            },
                            child: const Icon(
                              Icons.clear,
                              color: Colors.red,
                            )),
                      ),
                      onChanged: (value) {},
                      onSubmitted: (value) {
                        log(searchTextController.text);
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: DynamicHeightGridView(
                      itemCount: 220,
                      builder: ((context, index) {
                        return const ProductWidget();
                      }),
                      crossAxisCount: 2,
                    ),
                  ),
                ],
              ),
            )));
  }
}
