// import 'package:flutter/material.dart';
// import 'package:shopping_flutter_uikit/core/constants/colors.dart';

// class AppTheme {
//   AppTheme._();

//   static final ThemeData lightTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: ColorConstants.primaryColor,
//     hoverColor: Colors.grey,
//     // fontFamily: GoogleFonts.poppins().fontFamily,
//     appBarTheme: const AppBarTheme(
//       color: ColorConstants.primaryColor,
//       brightness:
//           ColorConstants.primaryColors.isDark() ? Brightness.dark : Brightness.light,
//     ),
//     iconTheme: const IconThemeData(color: Colors.black),
//     cardTheme: const CardTheme(color: Colors.white),
//   ).copyWith(
//     pageTransitionsTheme: const PageTransitionsTheme(
//       builders: <TargetPlatform, PageTransitionsBuilder>{
//         TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
//         TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
//         TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
//       },
//     ),
//   );

//   static final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primarySwatch: Colors.blue,
//   );
// }
