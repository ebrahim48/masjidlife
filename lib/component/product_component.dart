import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masjidlife_app/models/category.dart';
import 'package:masjidlife_app/style/app_color.dart';
import '../widget/category_card.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text("Our Products/ Services",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor().appBlack,
              ),
            ),
          ),
        ),
        Card(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 24,
              ),
              itemBuilder: (context,index){
              return CategoryCard(
               category: categoryList[index],
              );
              },
            itemCount: categoryList.length,
              ),
        ),
      ],
    );
  }
}
