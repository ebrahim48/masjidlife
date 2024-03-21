import 'package:flutter/material.dart';
import 'package:masjidlife_app/screens/branch_wise_list_screen.dart';
import 'package:masjidlife_app/style/app_color.dart';

import '../widget/text_view_widget.dart';
import 'about_peopleask.dart';

class HelpDisableScreen extends StatefulWidget {
  static const String routeName = '/Help Disable Screen';
  const HelpDisableScreen({super.key});

  @override
  State<HelpDisableScreen> createState() => _HelpDisableScreenState();
}

class _HelpDisableScreenState extends State<HelpDisableScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor().appGreen,
        leading: Icon(
          Icons.arrow_back,
          size: 30,
          color: AppColor().appLightGreen,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30,
              color: Color.fromRGBO(0, 143, 81, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Color.fromRGBO(0, 143, 81, 1),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextView(
              text: "District Wise Disabled List",
              color: Theme.of(context).shadowColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonText(title: 'I Want to Donate', OnTap: () {}),
                  ButtonText(title: 'View District Wise List', OnTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonText(title: 'Donor List', OnTap: () {}),
                  GestureDetector(
                    child: ButtonText(title: 'Branch Wise List', OnTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BranchWiseListScreen(),
                        ),
                      );
                    }),
                  ),
                ],
              )
            ],
          ),
        SizedBox(height: 10,),
          Container(
            width: 213,
            height: 24,
            decoration: ShapeDecoration(
              color: AppColor().appWhite,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: AppColor().applowash),
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            child: DropdownButton<String>(
              alignment: AlignmentDirectional.center,
              icon: Icon(Icons.chevron_right),
              isExpanded: true,
              hint: Text(
                'All Branch',
              ),
              onChanged: (String? newValue) {
                setState(() {});
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                width: 200,
                height: 24,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 5,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Result: Bogura 2",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.5,
                  ),
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        // width: 200,
                        // height: 320,
                        decoration: ShapeDecoration(
                          color: AppColor().appGreen,
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
                            Container(
                              width: 170,
                              height: 170,
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
                                  'Code: 0113',
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextView(
                                  text: "Name: Mst.Hamida Begum",
                                  color: Theme.of(context).shadowColor,
                                  fontWeight: FontWeight.normal,
                                ),
                                TextView(
                                  text: "Address: Pirgacha,Rangpur",
                                  color: Theme.of(context).shadowColor,
                                  fontWeight: FontWeight.normal,
                                ),
                                TextView(
                                  text: "Donation Received: 1,000",
                                  color: Theme.of(context).shadowColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ],
                            ),
                            ButtonText(
                              title: 'View More....',
                              OnTap: () {},
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
