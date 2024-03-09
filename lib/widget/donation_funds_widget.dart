import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masjidlife_app/style/app_color.dart';

class DonationFundsWidget extends StatelessWidget {
  const DonationFundsWidget(
      {super.key,
        required this.donationColor,
        required this.donationTitle,
        required this.donationImagePath});

  final Color donationColor;
  final String donationTitle;
  final String donationImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: donationColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(donationImagePath,
                semanticsLabel: 'Donation',),
              const SizedBox(height: 10,),
              Text(donationTitle,
                style: TextStyle(fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: AppColor().appBlack),)
            ],
          ),
        ),
      ),
    );
  }
}
