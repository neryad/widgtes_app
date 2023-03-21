import 'package:flutter/material.dart';
import 'package:widgtes_app/presentation/screens/buttons/buttons_screen.dart';

import '../../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.secondary,
      ),
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        //Todo navegar a otra pantallas
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ButtonsScreen()));
      },
    );
  }
}
