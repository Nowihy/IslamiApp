import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLang = 'En' ;
  void changeLanguage(String newLang){
    currentLang = newLang ;
    notifyListeners();

  }
}