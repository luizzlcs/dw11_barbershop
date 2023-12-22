import 'package:dw_barbershop/src/core/ui/widgets/constants.dart';
import 'package:flutter/material.dart';

sealed class BarbershopTheme {
  static const _defautInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
    borderSide: BorderSide(color: ColorsConstants.grey),
  );

  static ThemeData themeData = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorsConstants.white,
      labelStyle: const TextStyle(color: ColorsConstants.grey),
      border: _defautInputBorder,
      enabledBorder: _defautInputBorder,
      focusedBorder: _defautInputBorder,
      errorBorder: _defautInputBorder.copyWith(
        borderSide: const BorderSide(color: ColorsConstants.red),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsConstants.brown,
        foregroundColor: ColorsConstants.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    fontFamily: FontsConstants.fontFamily,
  );
}
