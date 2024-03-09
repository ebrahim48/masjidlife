import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../widget/biography_widget.dart';
import '../widget/personalbiography_widget.dart';

class FounderInfo extends StatelessWidget {
  static const String routeName = '/Branch';
  const FounderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.green,),
            tooltip: 'Search Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.green,),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
        ],
        backgroundColor: AppColor().appGreen,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.green, size: 24,),
          tooltip: 'Arrow Icon',
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 339,
                height: 35,
                margin: const EdgeInsets.only(top: 12, left: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor().appAsh,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '♦ 100% Interest Free Loans for the Poor.',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                      letterSpacing: 0,
                      color: AppColor().appLightGreen,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    PersonalBiographyWidget(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    BigraphyWidget(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
