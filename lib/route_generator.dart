import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_detail.dart';
import 'package:flutter_burclar/burc_list.dart';

import 'models/Burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BurcList());

      case 'burcDetail':
        final selected = settings.arguments as Burc;
        return MaterialPageRoute(
          builder: (context) => BurcDetail(selectedBurc: selected),
        );
    }
  }
}
