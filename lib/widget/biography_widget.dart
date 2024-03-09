import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masjidlife_app/style/app_color.dart';

class BigraphyWidget extends StatelessWidget {
  const BigraphyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 330,
            height: 400,
            margin: const EdgeInsets.only(top: 5, left: 0.1),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: AppColor().appAsh),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Born In: 1964',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Icon(
                          IconData(9830,
                              fontFamily: 'MaterialIcons'),
                          size: 10,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Birth-place: Village: West Sonapur. PO,',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor().appBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Thana & District: Feni',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Resided in: Cary, NC, USA.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Education:-',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Education:-',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Text(
                    'Post Graduate in Accounting (University of Chittagong)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Current Occupation:',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Text(
                    'Post Graduate in Accounting (University of Chittagong)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Previous Occupation:-',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Text(
                    'Business.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    'Founder, Chairman and Managing Director:-',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '>Accounting Learning Centre',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '> Accounting Learning Centre',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '> Ahmeds Academy',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '> Chandrika Pvt. Limited.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          '> The Information Technology (Chandrika)',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor().appBlack,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Text(
                    'Limited.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '> The Installment provider (Chandrika)',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Text(
                    'Limited.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          '> The Land Management (Chandrika)',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor().appBlack,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Text(
                    'Limited.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '> Chandrika Real Estate Limited.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Text(
                    '(All businesses are currently closed.)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Kamals Father:-',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Late Alhaj Abdul Ghfur Bhuyan.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'He was a businessman and social worker.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    'Founder - Feni Islamic Center.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Icon(
                          IconData(9830,
                              fontFamily: 'MaterialIcons'),
                          size: 10,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Mother: Nurjahan Begum - A homemaker',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor().appBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'and the main inspiration behind Masjid.Life',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Siblings:- (3 brothers and 3 sisters)',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '1. Elder sister: Khorseda Akhter,M.Ed',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '(Dhaka University) (Retired Teacher).',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '2. Elder Brother: Prof. Dr. Nesar Ahmed,',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Student & Asst. Prof. of Civil Engineering dept. - BUET.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'After teaching at various American',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'universities for more than 30 years,',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    'he is now working in an important position at NASA',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          '3. Elder sister :- Khaleda Akhter (US immigrant)',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor().appBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'B.Sc Honors and M.Sc',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '4. Kamal Ahmed Founder - Masjid.Life.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '5. Younger Brother:- Architect Kafil Jamil',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Architect from BUET;',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'MS - National University of Singapore.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    'Licensed professional architects',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    'in several US states.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '6. Younger sister:-',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Morsheda Zebin (US immigrant)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'BSS & MSS in Public Ad.(CU) Teacher:-',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Chittagong Public School and College.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Kamals Wife: Nasreen Ahmed',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'M.Com. FCA, (Chartered Accountant)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Senior Tax Analyst, Cary, NC, USA.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'She is the Co-Founder of Masjid.Life',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          '(Nasreens father Mr. Mesbah Uddin Ahmad)',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor().appBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '(was a member of the National Board of Revenue and Chairman of the Texas Settlement Commission. He retired as a secretary)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const Icon(
                        IconData(9830,
                            fontFamily: 'MaterialIcons'),
                        size: 10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Only Child:- Raisa Kamal',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '(Graphic Designer) She is an officer of US Bank.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Husband - Rifat Haider, Mechanical ',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor().appBlack,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '(BUET) PhD Student (Aerospace Engineering)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    'University of Cincinnati USA.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                  Text(
                    '(Rifats father is a Rtd. Brigadier General of Bangladesh Army)',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor().appBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}

