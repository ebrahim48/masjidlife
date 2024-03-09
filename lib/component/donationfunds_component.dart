import 'package:flutter/cupertino.dart';
import 'package:masjidlife_app/style/app_color.dart';
import 'package:masjidlife_app/style/asset_manager.dart';
import '../widget/donation_funds_widget.dart';

class DonationFundsComponent extends StatelessWidget {
  const DonationFundsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Text('Donation & Funds',
              style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor().appLightGreen)),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 10,),
              DonationFundsWidget(
                donationColor: AppColor().appLightGreen,
                donationTitle: 'Donate Generously',
                donationImagePath: AssetManager.DonateGenerouslyIcon,
              ),
              const SizedBox(width: 5,),
              DonationFundsWidget(
                donationColor: AppColor().appLightGreen,
                donationTitle: 'Donors & Lenders',
                donationImagePath: AssetManager.DonorsLendersIcon,
              ),
              const SizedBox(width: 5,),
              DonationFundsWidget(
                donationColor: AppColor().appLightGreen,
                donationTitle: 'Fund & Loan Summary',
                donationImagePath: AssetManager.FundLoanSummaryIcon,
              ),
              const SizedBox(width: 5,),
              DonationFundsWidget(
                donationColor: AppColor().appLightGreen,
                donationTitle: 'All Reports',
                donationImagePath: AssetManager.AllReportsIcon,
              ),
            ],
          ),
        )
      ],
    );
  }
}
