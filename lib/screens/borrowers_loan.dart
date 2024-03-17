import 'package:flutter/cupertino.dart';

import '../style/app_color.dart';

Widget _borrowersLoan(BuildContext context) {
  return  Padding(
    padding: const EdgeInsets.all(5),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Running Loan Schedule Details",
              style: TextStyle(
                fontSize: 18,
                color: AppColor().appBlack,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}