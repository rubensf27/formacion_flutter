import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<MenuOption> listadoMenuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(listadoMenuOptions[index].name),
          leading: Icon(listadoMenuOptions[index].icon,
              color: AppTheme.colorPrimary),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => ListView1Screen(),
            // );
            // Navigator.pushReplacement(context, route);
            Navigator.pushNamed(context, listadoMenuOptions[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: listadoMenuOptions.length,
      ),
    );
  }
}
