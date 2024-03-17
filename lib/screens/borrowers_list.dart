import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';
import '../models/borrowers_model.dart';
import '../widget/text_view_widget.dart';
import 'BorrowersProfile.dart';



class BorrowersList extends StatelessWidget {
  static const String routeName = '/Borrowers';
  const BorrowersList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _BuildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Borrowers List"),
    );
  }
  Widget _BuildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppValues.halfPadding),
      child: Column(
        children: [
          _buildHeader(context),
          _buildDonorInfo(context),
          _buildBorrowersList(context),
        ],
      ),
    );
  }
  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        _buildDonorListTitle(context),
        const SizedBox(height: AppValues.padding_4),
        _borrowersListTitle(context)
      ],
    );
  }
  Widget _buildDonorListTitle(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      margin: const EdgeInsets.symmetric(vertical: AppValues.padding_4),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Text(
              "Poschim Subarnodho jame masjid || 1030 Subarnodho, Gaibandha",
              style: TextStyle(
                fontSize: 16,
                color: AppColor().appBlack,
              ),
            ),
          ],
        ),

      ),
    );
  }

  Widget _borrowersListTitle(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          margin: const EdgeInsets.symmetric(vertical: AppValues.padding_4),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Results: Borrowers List 34 ",
              style: TextStyle(
                fontSize: 16,
                color: AppColor().appBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDonorInfo(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(AppValues.halfPadding),
      margin: const EdgeInsets.symmetric(vertical: AppValues.padding_4),
      decoration: ShapeDecoration(
        color: AppColor().appLightGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: borrowersInfoText(context),
    );
  }

  Widget _buildBorrowersList(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: borrowersinfo.length,
        itemBuilder: (context, index) {
          final borrowers = borrowersinfo[index];
          return GestureDetector(
              onTap: ()
              {
                // Navigator.push(context, MaterialPageRoute(builder: (context) =>  BorrowersProfile()));
              },
              child: borrowersListItem(borrowers, context));
        },),
    );
  }

  Widget borrowersInfoText(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextView(
              text: "B.Code",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 5,
            child: TextView(
              text: 'Code & Name',
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 4,
            child: TextView(
              text: "Disbursed",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 2,
            child: TextView(
              text: "Recovered",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 2,
            child: TextView(
              text: "Balance",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget borrowersListItem(Borrowers borrowers, BuildContext context) {
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
              flex: 2,child: TextView(text: borrowers.Code, color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          //  const SizedBox(width: 20.0),
          Expanded(
              flex: 4,child: TextView(text: borrowers.Name, color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          // const SizedBox(width: 80.0),
          Expanded(
              flex:2,child: TextView(text: borrowers.Disbursed.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          // const SizedBox(width: 20.0),
          Expanded(
              flex:2,child: TextView(text: borrowers.Recovered.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          Expanded(
              flex:2,child: TextView(text: borrowers.Balance.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  BorrowersProfile()));
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






