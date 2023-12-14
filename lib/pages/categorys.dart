import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/page_data/all_images.dart';
import 'package:assignment_one/page_data/all_styles.dart';
import 'package:assignment_one/page_data/all_text.dart';
import 'package:flutter/material.dart';
class CategorisePage extends StatefulWidget {
  const CategorisePage({super.key});

  @override
  State<CategorisePage> createState() => _CategorisePageState();
}

class _CategorisePageState extends State<CategorisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
      backgroundColor: allColors.grayLightColor,
      leading: allIcons.appBackPageIcons,
      title: Text(AllText.categorysPageTitle, style: allStyles.categorysPageTitleStyle,),
      centerTitle: true,
    ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 15.0,right: 15.0,top: 20.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/fashion03.jpg',
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(AllText.companyName, style: allStyles.companyNameStyle,),
                      ),
                      SizedBox(height: 30.0,),
                      Text(AllText.categoryFashionTitleText, style: allStyles.fashionCategoryTitleStyle,),
                    ],
                  ),
                ),
                SizedBox(height: 50.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/home_banner1.jpg',
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(AllText.companyName, style: allStyles.companyNameStyle,),
                      ),
                      SizedBox(height: 30.0,),
                      Text(AllText.categoryFoodTitleText, style: allStyles.fashionCategoryTitleStyle,),
                    ],
                  ),
                ),
                SizedBox(height: 50.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/hand_crafted3.jpg',
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(AllText.companyName, style: allStyles.companyNameStyle,),
                      ),
                      SizedBox(height: 30.0,),
                      Text(AllText.categoryHandTitleText, style: allStyles.fashionCategoryTitleStyle,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
