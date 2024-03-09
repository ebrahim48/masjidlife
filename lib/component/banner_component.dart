import 'package:flutter/cupertino.dart';
import '../style/app_color.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 100,
          width: 338,
          decoration: BoxDecoration(
            color: AppColor().appGreen,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColor().appGreen.withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
              )
            ],
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Image(image:
                    AssetImage(
                        'assets/images/screen.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About",
                        style: TextStyle(
                          color: AppColor().appBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 1),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Image(image: AssetImage('assets/images/screen3.png'),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
