import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';
import '../widget/text_view_widget.dart';
import 'about_peopleask.dart';
import 'about_sponsor.dart';
import 'donation_conformation.dart';



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
          _buildallunderprevillaged(context),
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
        _buildallreports(context),
        SizedBox(height: 5,),

      ],
    );
  }
  Widget _buildallreports(BuildContext context) {
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DonationConformationScreen(),
                              ),
                            );
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
Widget _buildallunderprevillaged(BuildContext context) {
  return   Expanded(
    flex: 2,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemCount: 2,
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {

              },
              child: Container(
                // width: 200,
                // height: 320,
                decoration: ShapeDecoration(
                  color: AppColor().appWhite,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: AppColor().applowash),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadows: [
                    BoxShadow(
                      color: AppColor().appAsh,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.all(5),
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/173x170"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF008F51)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        Chip(
                            label: Text(
                              'Status: Active',
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: "Name: MD. FORHAD HOSSAIN",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Father Name: ABDUL AZIZ MOLLAH",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Mother Name:",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Religion:Islam",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Mobile No:",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Address:MOLLAH BARI, WEST SONAPUR, FENI.",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Institute Name:RASHIDIA MADRASAH",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              color: AppColor().appLightGreen,
                              thickness: 0.75,
                              indent: 82,
                              endIndent: 90,
                            ),
                            TextView(
                              text: "Sponsor Name :M. Rahman (New York, USA)",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5,),
                            TextView(
                              text: "Duration:3/3/2022 to 2/1/2023",
                              color: AppColor().appBlack,
                              fontWeight: FontWeight.bold,
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    ButtonText(
                      title: 'About Sponsor',
                      OnTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutSponsor(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          }),
    ),
  );
}





