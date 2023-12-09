import 'package:flutter/material.dart';
import 'package:project/consts/theme_data.dart';
import 'package:project/providers/theme_provider.dart';
import 'package:project/root_screen.dart';
import 'package:project/screens/auth/forgot_password.dart';
import 'package:project/screens/auth/login.dart';
import 'package:project/screens/auth/register.dart';
import 'package:project/screens/auth/login.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/inner_screens/orders/orders_screen.dart';
import 'package:project/screens/inner_screens/product_details.dart';
import 'package:project/screens/inner_screens/viewed_recently.dart';
import 'package:project/screens/inner_screens/wishlist.dart';
// import 'package:project/screens/profile_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final themeProvider=Provider.of<ThemeProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shop Smart',
          theme: Style.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: RootScreen(),
          routes: {
            productDetails.routName: (context) => const productDetails(),
            WishListScreen.routeName: (context) => const WishListScreen(),
            ViewedRecentlyScreen.routeName: (context) =>
                const ViewedRecentlyScreen(),
            RegisterScreen.routName: (context) => const RegisterScreen(),
            LoginScreen.routName: (context) => const LoginScreen(),
            OrdersScreenFree.routeName: (context) => const OrdersScreenFree(),
            ForgotPasswordScreen.routeName: (context) =>
                const ForgotPasswordScreen(),
          },
        );
      }),
    );
  }
}
