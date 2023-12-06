import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:project/services/assets_manager.dart';
import 'package:project/widgets/app_name_text.dart';
import 'package:project/widgets/subtitle_text.dart';
import 'package:project/widgets/title_text.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const AppNameTextWidget(fontSize: 25,),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: TitlesTextWidget(
                  label: 'Please login to have ultimate access'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                        color: Theme.of(context).colorScheme.background,
                        width: 3),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnNksKuRrFvOaDU6sTMn7uqlvIITBt1G1bKPhIH4KTRUenCORJqtMNnxjcg_WeV2CCp5g&usqp=CAU'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitlesTextWidget(label: 'Alaa Zahra'),
                    SubtitleTextWidget(label: 'Alaa2@gmail.com'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitlesTextWidget(label: 'General',fontSize: 25,),
                CustomListTile(
                  imagePath: AssetsManager.orderSvg,
                  text: 'All orders',
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.wishlistSvg,
                  text: 'Wishlist',
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.recent,
                  text: 'Viewed recently',
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.address,
                  text: 'Address',
                  function: () {},
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 7,
                ),
                const TitlesTextWidget(label: 'Settings',fontSize: 25,),
                SwitchListTile(
                  secondary: Image.asset(
                    AssetsManager.theme,
                    height: 30,
                  ),
                  title: Text(themeProvider.getIsDarkTheme
                      ? 'Dark mode'
                      : 'Light mode'),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themeValue: value);
                  },
                ),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    (30)
                  ),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.login),
              label: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.function});

  final String imagePath, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(
        imagePath,
        height: 40,
      ),
      title: SubtitleTextWidget(label: text,fontSize: 20),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}