import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../app_values.dart';
import '../models/borrowersprofile_model.dart';
import '../widget/text_view_widget.dart';

class BorrowersProfile extends StatelessWidget {
  static const String routeName = '/BorrowersProfile';
  const BorrowersProfile({super.key});
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
          _buildBorrowersInfo(context),
          _buildBorrowersList(context),
          _buildborrowersLoan(context),
        ],
      ),
    );
  }
  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        _buildborrowersprofile(context),
        const SizedBox(height: AppValues.padding_4),
        _borrowersListTitleProfile(context),
        _borrowersLoanSummary(context),
        _borrowersTableProfile(context),
        _borrowersTransactions(context),

      ],
    );
  }
  Widget _buildborrowersprofile(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 100,
            width: 410,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onInverseSurface,
              border: Border.all(color: AppColor().appLightGreen,),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              Positioned(
                left: 0,
                child: Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.all(AppValues.halfPadding),
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/b/b1/portrait_placeholder.png"),
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
                left: 85,
                top: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: "Branch: 1030 Poschim Subarnodho jame masjid",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.bold,

                    ),
                    TextView(
                      text: "Md Nazrul Islam",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.bold,
                    ),
                    TextView(
                      text: "Borrowrer Code: 112",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.normal,
                    ),
                    TextView(
                      text: "Service: 01751003273",
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            ]))
      ],
    );
  }
  Widget _borrowersListTitleProfile(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      margin: const EdgeInsets.symmetric(vertical: AppValues.padding_4),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Loan Summary ",
              style: TextStyle(
                fontSize: 16,
                color: AppColor().appLightGreen,
              ),
            ),
            Divider(
              color: AppColor().appBlack,
              thickness: 0.75,
              indent: 110,
              endIndent: 110,
            ),
          ],
        ),
      ),
    );
  }
  Widget _borrowersLoanSummary(BuildContext context) {
    return Row(
      children: [
        _buildSummaryItem('Disbursed', '5000 BDT', context),
        _buildSummaryItem('Collection', '5000 BDT', context),
        _buildSummaryItem('Balance', '5000 BDT', context),
      ],
    );
  }
  Widget _buildSummaryItem(String text, String subtext, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Expanded(
        child: Container(
          height: 55,
          width: 100,
          color: AppColor().appWhite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: AppColor().appLightGreen),
              ),
              Text(
                subtext,
                style: TextStyle(color: AppColor().appLightGreen),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _borrowersTableProfile(BuildContext context) {
    return Positioned(
      top: 370,
      left: 71,
      child: Container(
        width: 286,
        height: 137,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
        ),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Documents')),
                  DataColumn(label: Text('Icons')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Photo')),
                    DataCell(
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColor().appLightGreen,
                        size: 20,
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Application Form Front')),
                    DataCell(
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColor().appLightGreen,
                        size: 20,
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Application Form Back')),
                    DataCell(
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColor().appLightGreen,
                        size: 20,
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('NID Front')),
                    DataCell(
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColor().appLightGreen,
                        size: 20,
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('NID Back')),
                    DataCell(
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColor().appLightGreen,
                        size: 20,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _borrowersTransactions(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor().appBlack,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }


  Widget _buildBorrowersInfo(BuildContext context) {
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
        itemCount: borrowerinfo.length,
        itemBuilder: (context, index) {
          final borrower = borrowerinfo[index];

          return GestureDetector(
              onTap: ()
              {

              },
              child: borrowersListItem(borrower, context));
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
              text: "Date",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 5,
            child: TextView(
              text: 'Disburse',
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 4,
            child: TextView(
              text: "Collection",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 2,
            child: TextView(
              text: "Details",
              color: AppColor().appWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
  Widget borrowersListItem(Borrower borrower, BuildContext context) {
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
              flex: 2,child: TextView(text: borrower.Date, color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          //  const SizedBox(width: 20.0),
          Expanded(
              flex:2,child: TextView(text: borrower.Disburse.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          // const SizedBox(width: 20.0),
          Expanded(
              flex:2,child: TextView(text: borrower.Collection.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),
          Expanded(
              flex:2,child: TextView(text: borrower.Details.toString(), color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.bold)),

        ],
      ),
    );
  }



  Widget _buildborrowersLoan(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Running Loan Schedule Details",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor().appBlack,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}







































