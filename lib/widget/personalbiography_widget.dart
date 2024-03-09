import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masjidlife_app/screens/about_peopleask.dart';
import 'package:masjidlife_app/style/app_color.dart';

class PersonalBiographyWidget extends StatelessWidget {
  const PersonalBiographyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 10,
              margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                color: AppColor().appLightGreen,
                border: Border.all(color: AppColor().appAsh), // Border color
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => About_Peopleask()));
                },
                child: Text(
                  'Personal Biography',
                  style: TextStyle(color: AppColor().appWhite),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor().appAsh), // Border color
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Personal Biography',
                  style: TextStyle(color: AppColor().appLightGreen),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
