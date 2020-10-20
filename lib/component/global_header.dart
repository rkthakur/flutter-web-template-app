import 'package:flutter/material.dart';

class GlobalHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('AppBar Demo'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_bag),
          tooltip: 'Show Snackbar',
        )
      ],
    );
  }
}
