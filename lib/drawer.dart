import 'package:flutter/material.dart';

import './pages/products_admin.dart';
import './pages/products.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            title: Text('All products'),
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProductsPage(),
                )),
          ),
          ListTile(
            title: Text('Manage Products'),
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProductsAdminPage(),
                )),
          ),
        ],
      ),
    );
  }
}
