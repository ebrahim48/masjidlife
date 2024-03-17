import 'package:flutter/material.dart';
import 'package:masjidlife_app/screens/question_detail_withdropdown_Screen.dart';
import 'package:masjidlife_app/style/app_color.dart';

import '../app_values.dart';
import '../models/model_question.dart';
import '../models/question_model.dart';
import '../widget/text_view_widget.dart';


class About_Peopleask extends StatelessWidget {
  static const String routeName = '/About_Peopleask';
  const About_Peopleask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(),
        body: _buildBody(context));
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("About People Ask"),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(AppValues.halfPadding),
      child: Column(
        children: <Widget>[
          _buildhader(context),
          SizedBox(
            height: 20,
          ),
          TextView(
            text: "আপনার জিজ্ঞাসা",
            fontWeight: FontWeight.bold,
            color: AppColor().appLightGreen,
          ),

          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: Questionlist.length,
              itemBuilder: (context, index) {
                return Card(

                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.done_all_outlined,
                            color: AppColor().appLightGreen,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 263,
                            child: TextView(
                              text: Questionlist[index].question,
                              fontWeight: FontWeight.normal,
                              color: AppColor().appLightGreen,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      QuestionDetailWithDropdownScreen(
                                          question: Questionlists[index].questions),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: AppColor().appLightGreen,
                            ),
                          ),

                        ]),
                  ),
                );
              },),
          ),
        ],
      ),
    );
  }
  Widget _buildhader(BuildContext context) {
    return Column(children: [
      TextView(
        text: "♦ 100% Interest Free Loans for the Poor and Disadvantaged",
        fontWeight: FontWeight.normal,
        color: AppColor().appLightGreen,
      ),
      SizedBox(
        height: 30,
      ),
      _buildfunderinfo(context),
    ]);
  }
  Widget _buildfunderinfo(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 180,
            width: 350,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onInverseSurface,
              border: Border.all(color: AppColor().appLightGreen,),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              Positioned(
                left: 20,
                child: Container(
                  width: 120,
                  height: 140,
                  margin: const EdgeInsets.all(AppValues.halfPadding),
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/b/b1/Portrait_placeholder.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1,
                        color: AppColor().appLightGreen,),
                      borderRadius: BorderRadius.circular(AppValues.radius_6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: "Kamal Ahmad",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.bold,
                    ),
                    TextView(
                      text: "Founder",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.normal,
                    ),
                    TextView(
                      text: "MASJID.LIFE",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 180,
                  top: 120,
                  child: ButtonText(title: 'Founder Biography', OnTap: () {}))
            ]))
      ],
    );
  }

}

class ButtonText extends StatelessWidget {
  final String title;
  final VoidCallback? OnTap;


  const ButtonText({
    super.key,
    required this.title,
    this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor().appLightGreen,
        ),
        onPressed: OnTap,
        child: Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ));
  }
}