import 'package:flutter/material.dart';
import 'package:masjidlife_app/screens/BranchScreen.dart';
import 'package:masjidlife_app/screens/home_screen.dart';

void main() {
  runApp(const MasjidLifeApp());
}
class MasjidLifeApp extends StatelessWidget {
  const MasjidLifeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        BranchScreen.routeName: (_) => BranchScreen(),
      },
    );
  }
}


