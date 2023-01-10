import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rutas = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes en flutter"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(rutas[index].name),
                  leading: Icon(
                    rutas[index].icon,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, rutas[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: rutas.length));
  }
}
