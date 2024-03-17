import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';

import 'borrowers_list.dart';
import 'fund_and_loanSummary_Screen.dart';

class FundTrackingScreen extends StatelessWidget {
  static const String routeName = '/Fund Tracking Screen';
  const FundTrackingScreen({Key? key}) : super(key: key);
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
      body: Column(
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
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 120,
              width: 400,
              child: Card(
                color: AppColor().appGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(1, 1, 10, 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 5,),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Branch: ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor().appBlack,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        '1030 Poschim Subarnodho jame masjid',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor().appBlack,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                const SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Address: ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,

                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Village:Subarnodho, Union: Ramjibon,',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text(
                                            'PO: Thana: Sundarganj Upazila,',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text(
                                            'District: Gaibandha, Division: Rangpur',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text(
                                      'Started: ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor().appBlack,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      '21-Jul-2022',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColor().appLightGreen,
                                      ),
                                    ),

                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '(1year, 5months, 9days ago).',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColor().appLightGreen,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text('Branch Fund & Loan Summary',
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColor().appLightGreen)),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 140,
              width: 420,
              child: Card(
                color: AppColor().appWhite,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appGreen,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('01', style: TextStyle(fontSize: 12)),
                            Text('Net Fund From MDL:', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 1,),
                            Text('90,000', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appGreen,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: Container(
                          color: AppColor().appWhite,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('02', style: TextStyle(fontSize: 12)),
                              Text('(-) Bank Charge:', style: TextStyle(fontSize: 12)),
                              SizedBox(width: 1,),
                              Text('23', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('03', style: TextStyle(fontSize: 12)),
                            Text('(+) Profit From Bank :', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 1,),
                            Text('0', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appGreen,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('04', style: TextStyle(fontSize: 12)),
                            Text('Available Net Fund (1-2+3):', style: TextStyle(fontSize: 12)),
                            Text('89,977', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('05', style: TextStyle(fontSize: 12)),
                            Text('Loan Issued:', style: TextStyle(fontSize: 12)),
                            Text('222,500', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('06', style: TextStyle(fontSize: 12)),
                            Text('Loan Recovered:', style: TextStyle(fontSize: 12)),
                            Text('141,100', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('07', style: TextStyle(fontSize: 12)),
                            Text('Loan Due (5-6):', style: TextStyle(fontSize: 12)),
                            Text('81,400', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appGreen,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('08', style: TextStyle(fontSize: 12)),
                            Text('Undistributed Fund (9+10):', style: TextStyle(fontSize: 12)),
                            Text('8,577', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('09', style: TextStyle(fontSize: 12)),
                            Text('Cash:', style: TextStyle(fontSize: 12)),
                            Text('7,000', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('10', style: TextStyle(fontSize: 12)),
                            Text('Bank:', style: TextStyle(fontSize: 12)),
                            Text('1,577', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appGreen,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('11', style: TextStyle(fontSize: 12)),
                            Text('No of Borrower:', style: TextStyle(fontSize: 12)),
                            Text('14', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('12', style: TextStyle(fontSize: 12)),
                            Text('Overdue Loan:', style: TextStyle(fontSize: 12)),
                            Text('16,100', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 396,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor().appWhite,
                          border: Border(
                            bottom: BorderSide(
                              color: AppColor().appWhite,
                              width: 5.0,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('13', style: TextStyle(fontSize: 12)),
                            Text('% On Due Amount:', style: TextStyle(fontSize: 12)),
                            Text('20 %', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
            child: SizedBox(
              height: 140,
              width: 320,
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
                              height: 40,
                              decoration: BoxDecoration(
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
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => BorrowersList(),
                                  //   ),
                                  // );
                                },
                                child: Center(
                                  child: Text(
                                    'Borrowers List',
                                    style: TextStyle(
                                      fontSize: 14,
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
                              height: 40,
                              decoration: BoxDecoration(
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
                                  'Overdue Loan List',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor().appLightGreen,
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
                              height: 40,
                              decoration: BoxDecoration(
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
                                  'Branch Management Team',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColor().appLightGreen,
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
                              height: 40,
                              decoration: BoxDecoration(
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
                                  'Branch Documents',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor().appLightGreen,
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
                              height: 40,
                              decoration: BoxDecoration(
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
                                      builder: (context) => FundandLoanSummaryScreen(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    'Branch Loan Resulation',
                                    style: TextStyle(
                                      fontSize: 13,
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
                              height: 40,
                              decoration: BoxDecoration(
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
                                  'Sponsor',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor().appLightGreen,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 180,
                              height: 40,
                              decoration: BoxDecoration(
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
                                  'Report',
                                  style: TextStyle(
                                    fontSize: 13,
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
          ),
        ],
      ),
    );
  }
}
