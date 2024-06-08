import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:todos/themes/theme_provider.dart';
import 'package:todos/widgets/home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkMode =
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;

  onThemeChangeHandler(BuildContext context) {
    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
    setState(() {
      _isDarkMode =
          Provider.of<ThemeProvider>(context, listen: false).isDarkMode();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context, onThemeChangeHandler, _isDarkMode),
      body: const Center(
        child: Text('Hello Page'),
      ),
    );
  }
}
