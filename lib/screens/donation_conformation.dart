import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';

class DonationConformationScreen extends StatelessWidget {
  static const String routeName = '/Donation Conformation Screen';
  const DonationConformationScreen({super.key});
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildHeader(context),
          ],
        ),
      ),
    );
  }
  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Container(
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
            child: Text(
              'About Help Disabled',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor().appWhite,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5,),
        _buildallreports(),
        SizedBox(height: 12,),
        _buildabouthelpdisabled(),
      ],
    );
  }
  Widget _buildallreports() {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
      child: SizedBox(
        height: 40,
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
                          color: AppColor().appWhite,
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
                              'I Want to Donate',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColor().appLightGreen,
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
                          color: AppColor().appWhite,
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
                            'View All Disabled List',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor().appLightGreen,
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
  Widget _buildabouthelpdisabled() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemCount: 12,
      itemBuilder: (_, index) {
        return Container(
          color: AppColor().appWhite,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    fixedSize: Size(24, 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Color(0xffCCE9DC),
                    textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: AppColor().appLightGreen,
                    ),
                  ),
                  child: Container(
                    width: 54,
                    height: 14,
                    alignment: Alignment.center,
                    child: Text(
                      'Dhaka',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColor().appLightGreen,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '10',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 5),
                Text(
                  'Disabled People',
                  style: TextStyle(fontSize: 14),
                ),
               Divider(
                 color: AppColor().appBlack,
                 thickness: 1,
                 indent: 4,
                 endIndent: 4,
               ),
                Text(
                  'Received Donation',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  '0 Tk',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    fixedSize: Size(24, 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Color(0xff008F51),
                    textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: AppColor().appWhite,
                    ),
                  ),
                  child: Container(
                    width: 54,
                    height: 14,
                    alignment: Alignment.center,
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColor().appWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}






