import 'package:flutter/material.dart';
import '../component/banner_component.dart';
import '../component/box_component.dart';
import '../component/donationfunds_component.dart';
import '../component/header_component.dart';
import '../component/product_component.dart';
import '../style/app_color.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/Home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: HeaderComponent(),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             BoxComponent(),
             BannerComponent(),
             DonationFundsComponent(),
             ProductComponent(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          Container(
            color: AppColor().appLightGreen,
            child: const NavigationDestination(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
          ),
          Container(
            color: AppColor().appLightGreen,
            child: const NavigationDestination(
              icon: Icon(Icons.bar_chart),
              label: 'Feature',
            ),
          ),
          Container(
            color: AppColor().appLightGreen,
            child: const NavigationDestination(
              icon: Icon(Icons.account_box),
              label: 'Account',
            ),
          ),
        ],
      ),
    );
  }
}
