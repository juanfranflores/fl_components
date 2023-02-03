import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';
import 'package:fl_components/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
            title: Text(menuOptions[i].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          );
        },
        separatorBuilder: (BuildContext _, int __) {
          return const Divider();
        },
      ),
    );
  }
}
