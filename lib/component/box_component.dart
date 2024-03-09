import 'package:flutter/cupertino.dart';
import '../style/app_color.dart';

class BoxComponent extends StatelessWidget {
  const BoxComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 30,
      margin: const EdgeInsets.only(top: 12, left: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor().appAsh,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          '♦ 100% Interest Free Loans for the Poor and Disadvantaged.',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.33,
            letterSpacing: 0,
            color: AppColor().appLightGreen,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
