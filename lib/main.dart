import 'package:flutter/material.dart';
import 'package:lifecycle_stf/view/home_screen.dart';

void main() {
  runApp(MyApp(productId: 1),);
}

class MyApp extends StatefulWidget {
  final int productId;

  const MyApp({super.key, required this.productId});

  @override
  State<MyApp> createState() =>_MyAppState();
}

class _MyAppState extends State<MyApp> {
  int quantity = 1;
  late TextEditingController noteController;
  bool _isDark = false;
  late Color _primaryColor;
  void toggleTheme(){
    setState(() {
      _isDark=!_isDark;
    });
  }
  int userId = 1;

  void switchUser() {
    setState(() {
      userId = userId == 1 ? 2 : 1;
    });
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _primaryColor= Theme.of(context).colorScheme.primary;
    print('🔁 didChangeDependencies -  primaryColor = $_primaryColor');
  }
  @override
  void dispose() {
    print('dispose - hủy controller');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
        seedColor: _isDark ? Colors.red : Colors.deepPurple,
        brightness: _isDark ? Brightness.dark : Brightness.light,
    ),
    ),
      home: HomeScreen(id: userId,toggleTheme:toggleTheme, changeId: switchUser,),
    );
  }
}
