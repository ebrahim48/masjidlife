import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';
import '../widget/text_view_widget.dart';

class AboutSponsor extends StatelessWidget {
  static const String routeName = '/About Sponsor';
  const AboutSponsor({super.key});
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
          _buildaboutsponsor(context),
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
          padding: const EdgeInsets.symmetric(horizontal: 110),
          child: Text(
            'Sponsor Details',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor().appLightGreen,
            ),
          ),
        ),
      ],
    );
  }
}
Widget _buildallunderprevillaged(BuildContext context) {
  return Expanded(
    flex: 2,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            childAspectRatio: 0.9,
          ),
          itemCount: 1,
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
                  color: AppColor().appskyblue,
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
                      mainAxisAlignment: MainAxisAlignment.end,
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                text: "Name: M. Rahman (New York, USA)",
                                color: AppColor().appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 5,),
                              TextView(
                                text: "Sponsor Code:005",
                                color: AppColor().appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 5,),
                              TextView(
                                text: "Father’s Name:",
                                color: AppColor().appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 5,),
                              TextView(
                                text: "Mother’s Name:",
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
                                text: "Profession:",
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
                                text: "Email:",
                                color: AppColor().appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 5,),
                              TextView(
                                text: "Nationality:Bangladeshi",
                                color: AppColor().appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 5,),
                              TextView(
                                text: "Address:New York, USA.)",
                                color: AppColor().appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    ),
  );
}
Widget _buildaboutsponsor(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              'About Sponsor',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor().appBlack,
              ),
            ),
          ),
          Divider(
            color: AppColor().appBlack,
            thickness: 0.75,
            indent: 100,
            endIndent: 97,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: "উনি আমেরিকার নিউইয়র্ক সিটিতে বসবাসকারী একজন বাংলাদেশী। উনি ৩ জন ছাত্রের লেখাপড়ার দায়িত্ব নিয়েছেন।।",
                      color: AppColor().appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}







