import 'package:flutter/material.dart';
import 'package:masjidlife_app/models/branchwise_model.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';
import '../models/borrowers_model.dart';
import '../widget/text_view_widget.dart';
import 'BorrowersProfile.dart';



class UnderPrivillagedScreen extends StatelessWidget {
  static const String routeName = '/Under Privillaged Screen';
  const UnderPrivillagedScreen({super.key});
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
      body: _BuildBody(context),
    );
  }
  Widget _BuildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppValues.halfPadding),
      child: Column(
        children: [
          _buildHeader(context),
        ],
      ),
    );
  }
  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 67),
          child: Text(
            'Education For Underprivillaged',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor().appLightGreen,
            ),
          ),
        ),
        const SizedBox(height: 5,),
        _buildallreports(),
        SizedBox(height: 12,),
      ],
    );
  }
  Widget _buildallreports() {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
      child: SizedBox(
        height: 35,
        width: 300,
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
                        height: 25,
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
                              'About Us',
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
                        height: 25,
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
                            'Student Donor List',
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
              ],
            ),
          ),
        ),
      ),
    );
  }









}






