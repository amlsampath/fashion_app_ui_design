import 'package:fashion_design_app/ui/details/details.dart';
import 'package:fashion_design_app/ui/home/home.dart';
import 'package:flutter/material.dart';

Route onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => Home(),
      );
    case '/details':
      return MaterialPageRoute(
        builder: (context) => Details(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Home(),
      );
  }
}
