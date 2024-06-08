import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

AppBar homeAppBar(
    BuildContext context, Function onThemeChangeHandler, bool isDarkMode) {
  return AppBar(
    leading: IconButton(
      onPressed: () => onThemeChangeHandler(context),
      icon: Icon(isDarkMode ? Ionicons.sunny : Ionicons.moon),
    ),
    title: const Text("Todos"),
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(Ionicons.trash_bin),
        onPressed: () {},
      ),
      const SizedBox(
        width: 16,
      )
    ],
  );
}
