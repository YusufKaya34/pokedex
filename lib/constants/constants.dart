import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static const String title = 'Pokedex';
  static TextStyle titleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontSize: _calculateFontSize(48),
        fontWeight: FontWeight.bold);
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontSize: _calculateFontSize(24),
        fontWeight: FontWeight.bold);
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static String pokeballImageUrl = 'assets/images/pokeball.png';

  // ignore: non_constant_identifier_names
  static _calculateFontSize(int Size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return Size.sp;
    } else {
      return (Size - 1.5).sp;
    }
  }
  static TextStyle getPokeInfoLabeTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: _calculateFontSize(20),
    );
  }
  static TextStyle getPokeInfoTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(16),
    );
  }
}
