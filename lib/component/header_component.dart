import 'package:flutter/material.dart';
import 'package:masjidlife_app/screens/BranchScreen.dart';
import 'package:masjidlife_app/screens/founder-info.dart';
import 'package:masjidlife_app/style/app_color.dart';
class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 50,
      margin: const EdgeInsets.only(top: 44),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColor().appGreen,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Image(image: AssetImage('assets/images/masjid.png'),),
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 10, 10, 10),
            child: Text(
              'MASJID.LIFE',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: AppColor().appLightGreen,
              ),
            ),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FounderInfo()));
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(4),
              child: Icon(
                Icons.search,
                color: AppColor().appLightGreen,
                size: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BranchScreen()));
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(4),
              child: Icon(
                Icons.menu,
                color: AppColor().appLightGreen,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}