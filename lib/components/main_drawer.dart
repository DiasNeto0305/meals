import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.bottomLeft,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.grey[300]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)
          )
        ],
      ),
    );
  }
}