import 'package:flutter/material.dart';
import 'package:kopi_hitam/presentation/item_detail/item_detail_page.dart';
import 'package:kopi_hitam/presentation/menu_list/menu_list_page.dart';
import 'package:kopi_hitam/presentation/profile/profile_page.dart';

import 'navigasi/main_navigasi.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/MainNavigasi',
      routes: {
        '/MainNavigasi': (context) => MainNavigasi(),
        '/home': (context) => MenuListPage(),
        '/item_detail_page': (context) => ItemDetailPage(),
        '/profile': (context) => ProfilePage(),
      },
      home: MenuListPage(),
    );
  }
}
