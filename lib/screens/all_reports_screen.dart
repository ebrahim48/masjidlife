import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';

import '../widget/app_dropdown_widgets.dart';


class AllReportsScreen extends StatelessWidget {
  static const String routeName = '/All Reports Screen';
  const AllReportsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.green,),
            tooltip: 'Search Icon',
            onPressed: () {

            },
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.green,),
            tooltip: 'Menu Icon',
            onPressed: () {

            },
          ),
        ],
        backgroundColor: AppColor().appGreen,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.green, size: 24,),
          tooltip: 'Arrow Icon',
          onPressed: () {

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 85),
              child: Text(
                'All Reports',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor().appLightGreen,
                ),
              ),
            ),
            Divider(
              color: AppColor().appLightGreen,
              thickness: 0.75,
              indent: 82,
              endIndent: 180,
            ),
            const SizedBox(height: 5,),
            _buildchevron(),
            const SizedBox(height: 5,),
            _buildallreports(),
          ],
        ),
      ),

    );
  }
}

Widget _buildchevron() {
  return Container(
    width: 200,
    height: 24,
    margin: EdgeInsets.only(
      top: 10,
      left: 50,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Find Your Bank Account",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Icon(Icons.chevron_right),
        SizedBox(width: 8),
      ],
    ),
  );
}
Widget _buildallreports() {
  return  Padding(
    padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
    child: SizedBox(
      height: 160,
      width: 340,
      child: Card(
        color: AppColor().appWhite,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        border: Border.all(
                          color: AppColor().appLightGreen,
                          width: 0.1,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Center(
                          child: Text(
                            'Cash Statement',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor().appWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        border: Border.all(
                          color: AppColor().appLightGreen,
                          width: 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Bank Statement',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor().appWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        border: Border.all(
                          color: AppColor().appLightGreen,
                          width: 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'MDL Statement',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor().appWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        border: Border.all(
                          color: AppColor().appLightGreen,
                          width: 0.1,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Center(
                          child: Text(
                            'Borrower Statement',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor().appWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        border: Border.all(
                          color: AppColor().appLightGreen,
                          width: 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Bank Charge Statement',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor().appWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor().appLightGreen,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        border: Border.all(
                          color: AppColor().appLightGreen,
                          width: 0.1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Performance of Branches',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor().appWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
