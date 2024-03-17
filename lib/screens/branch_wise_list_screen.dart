import 'package:flutter/material.dart';
import 'package:masjidlife_app/models/branchwise_model.dart';
import 'package:masjidlife_app/screens/under_privillaged_screen.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';
import '../models/borrowers_model.dart';
import '../widget/text_view_widget.dart';
import 'BorrowersProfile.dart';



class BranchWiseListScreen extends StatelessWidget {
  static const String routeName = '/Branch Wise List Screen';
  const BranchWiseListScreen({super.key});
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
          _buildBranchInfo(context),
          _buildBranchesList(context),
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
          padding: const EdgeInsets.symmetric(horizontal: 85),
          child: Text(
            'Branch Wise Disabled List',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor().appLightGreen,
            ),
          ),
        ),
        const SizedBox(height: 5,),
        _buildallreports(),
        const SizedBox(height: 1),
        _buildchevron(),
        SizedBox(height: 12,),
      ],
    );
  }
  Widget _buildallreports() {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
      child: SizedBox(
        height: 70,
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
                              'I Want to Donate',
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
                            'View District Wise List',
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
                        child: Center(
                          child: Text(
                            'Donor List',
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
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: Center(
                            child: Text(
                              'Branch Wise List',
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
                SizedBox(height: 8,),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildchevron() {
    return Container(
      width: 150,
      height: 30,
      margin: EdgeInsets.only(
        top: 10,
        left: 90,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "All Branch",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Icon(Icons.chevron_right),
          SizedBox(width: 8),
        ],
      ),
    );
  }


  Widget _buildBranchInfo(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(AppValues.halfPadding),
      margin: const EdgeInsets.symmetric(vertical: AppValues.padding_4),
      decoration: ShapeDecoration(
        color: AppColor().appLightGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: branchesInfoText(context),
    );
  }

  Widget _buildBranchesList(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: branchwiseinfo.length,
        itemBuilder: (context, index) {
          final branchwises = branchwiseinfo[index];
          return GestureDetector(
              onTap: ()
              {

              },
              child: branchesListItem(branchwises, context));
        },),
    );
  }

  Widget branchesInfoText(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextView(
              text: "Code",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 5,
            child: TextView(
              text: 'Branch Name',
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 4,
            child: TextView(
              text: "Amount",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 2,
            child: TextView(
              text: "Disabled People",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget branchesListItem(BranchWises branchWises, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppValues.halfPadding),
      margin: const EdgeInsets.symmetric(vertical: AppValues.padding_4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 2,child: TextView(text: branchWises.Code, color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          //  const SizedBox(width: 20.0),
          Expanded(
              flex: 4,child: TextView(text: branchWises.Name, color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          // const SizedBox(width: 80.0),
          Expanded(
              flex:2,child: TextView(text: branchWises.Amount.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          // const SizedBox(width: 20.0),
          Expanded(
              flex:2,child: TextView(text: branchWises.Disabled.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: AppValues.padding_3),
              decoration: ShapeDecoration(
                color: AppColor().appLightGreen,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  UnderPrivillagedScreen()));
                },
                child: Center(
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: AppColor().appWhite,
                      size: 20,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

}






