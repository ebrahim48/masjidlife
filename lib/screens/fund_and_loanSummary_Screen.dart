import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';


class FundandLoanSummaryScreen extends StatelessWidget {
  static const String routeName = '/Fund and Loan Summary Screen';
  const FundandLoanSummaryScreen({Key? key}) : super(key: key);
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
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: Text(
              'Fund & Loan Summary',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor().appLightGreen,
              ),
            ),
          ),
          Divider(
            color: AppColor().appLightGreen,
            thickness: 0.75,
            indent: 82,
            endIndent: 90,
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 299,
              width: 850,
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
                            Text('1', style: TextStyle(fontSize: 12)),
                            Text('Total Fund (2+3)', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 1,),
                            Text('5,498,861', style: TextStyle(fontSize: 12)),
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
                              Text('2', style: TextStyle(fontSize: 12)),
                              Text('Donation', style:
                              TextStyle(fontSize: 12)),
                              SizedBox(width: 1,),
                              Text('4,244,577', style: TextStyle(fontSize: 12)),
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
                            Text('3', style: TextStyle(fontSize: 12)),
                            Text('Lenders Contribution', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 1,),
                            Text('1,254,284', style: TextStyle(fontSize: 12)),
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
                            Text('4', style: TextStyle(fontSize: 12)),
                            Text('Fund to Branches', style: TextStyle(fontSize: 12)),
                            Text('5,440,811', style: TextStyle(fontSize: 12)),
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
                            Text('5', style: TextStyle(fontSize: 12)),
                            Text('Bank Charge:', style: TextStyle(fontSize: 12)),
                            Text('4,209', style: TextStyle(fontSize: 12)),
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
                            Text('6', style: TextStyle(fontSize: 12)),
                            Text('Income from Bank', style: TextStyle(fontSize: 12)),
                            Text('0', style: TextStyle(fontSize: 12)),
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
                            Text('7', style: TextStyle(fontSize: 12)),
                            Text('Available Fund (1-4-5+6)', style: TextStyle(fontSize: 12)),
                            Text('53,841', style: TextStyle(fontSize: 12)),
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
                            Text('', style: TextStyle(fontSize: 12)),
                            Text('Cash', style: TextStyle(fontSize: 12)),
                            Text('2,650', style: TextStyle(fontSize: 12)),
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
                            Text('', style: TextStyle(fontSize: 12)),
                            Text('Bank', style: TextStyle(fontSize: 12)),
                            Text('51,191', style: TextStyle(fontSize: 12)),
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
                            Text('8', style: TextStyle(fontSize: 12)),
                            Text('Outstanding Loan (9-10)', style: TextStyle(fontSize: 12)),
                            Text('4,035,949', style: TextStyle(fontSize: 12)),
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
                            Text('9', style: TextStyle(fontSize: 12)),
                            Text('Loan Issued', style: TextStyle(fontSize: 12)),
                            Text('15,998,330', style: TextStyle(fontSize: 12)),
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
                            Text('Loan Recovery:', style: TextStyle(fontSize: 12)),
                            Text('11,962,380', style: TextStyle(fontSize: 12)),
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
                            Text('Overdue Loan', style: TextStyle(fontSize: 12)),
                            Text('752,047', style: TextStyle(fontSize: 12)),
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
                            Text('', style: TextStyle(fontSize: 12)),
                            Text('% of Overdue', style: TextStyle(fontSize: 12)),
                            Text('19 %', style: TextStyle(fontSize: 12)),
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
                            Text('12', style: TextStyle(fontSize: 12)),
                            Text('Undistributed Fund (4-10)', style: TextStyle(fontSize: 12)),
                            Text('1,404,862', style: TextStyle(fontSize: 12)),
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
                            Text('Bank Charges from Branch', style: TextStyle(fontSize: 12)),
                            Text('14,814', style: TextStyle(fontSize: 12)),
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
                            Text('14', style: TextStyle(fontSize: 12)),
                            Text('Income from Bank by Branches', style: TextStyle(fontSize: 12)),
                            Text('444', style: TextStyle(fontSize: 12)),
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
                            Text('15', style: TextStyle(fontSize: 12)),
                            Text('Undistributed Fund (4-10)', style: TextStyle(fontSize: 12)),
                            Text('1,390,492', style: TextStyle(fontSize: 12)),
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
                            Text('', style: TextStyle(fontSize: 12)),
                            Text('Cash', style: TextStyle(fontSize: 12)),
                            Text('911,687', style: TextStyle(fontSize: 12)),
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
                            Text('', style: TextStyle(fontSize: 12)),
                            Text('Bank', style: TextStyle(fontSize: 12)),
                            Text('481,655', style: TextStyle(fontSize: 12)),
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
        ],
      ),
    );
  }
}
