import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';

const TextStyle appBarTitleTextStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        titleTextStyle: TextStyle(color: AppColors.white, fontSize: 16)));

InputDecoration getInputDecoration(
    {Widget? prefixicon,
    Widget? suffixicon,
    required String hintText,
    Color? fillcolor,
    bool hideBottomPadding = false}) {
  return InputDecoration(
      prefixIcon: prefixicon,
      suffixIcon: suffixicon,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      // fillColor: fillcolor ?? AppColors.primary.withOpacity(0.5),
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey[400],
      ),
      border: OutlineInputBorder(
        borderRadius: hideBottomPadding
            ? const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )
            : const BorderRadius.all(
                Radius.circular(10.0),
              ),
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: 0.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: hideBottomPadding
            ? const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )
            : const BorderRadius.all(
                Radius.circular(10.0),
              ),
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: 0.0,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.0,
        ),
      ),
      errorStyle: const TextStyle(height: 0.0, fontSize: 0.0));
}
