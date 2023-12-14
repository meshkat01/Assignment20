import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/page_data/all_images.dart';
import 'package:assignment_one/page_data/all_text.dart';
import 'package:assignment_one/pages/my_account.dart';
import 'package:assignment_one/pages/storage_utils.dart';
import 'package:flutter/material.dart';
import 'package:assignment_one/page_data/all_styles.dart';
import '';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: allColors.grayLightColor,
        title: Text(AllText.appBarText, style: allStyles.abbBarTitleStyle),
        centerTitle: true,

elevation: 0.0,

      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
         padding: EdgeInsets.only(left: 15.0,right: 15.0),
          child: Column(

            children: [
              //banner section
              Container(
                margin: EdgeInsets.only(top: 30.0),
                width: MediaQuery.of(context).size.width,
                height: 141.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),

                  ),
                  image: DecorationImage(
                    image: AssetImage('asset/images/home_banner1.jpg'),
                    fit: BoxFit.cover,

                  ),
                ),
               child: Padding(
                 padding: const EdgeInsets.only(top: 45.0,left: 30.0),
                 child: Column(
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width,
                       child:Text(AllText.bannerOfferTitleText,
                       style: allStyles.bannerHomeTitle,
                       textAlign: TextAlign.left,
                     ),),
                     Container(
                       width: MediaQuery.of(context).size.width,
                       child:Text(AllText.bannerOfferText,
                       style: allStyles.bannerHomeOffer,
                       textAlign: TextAlign.left,
                     ),),



                   ],
                 ),
               )

              ),
              SizedBox(height: 30.0,),
              //Category Home Section
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(

                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),

                            ),
                            color: allColors.maruneColor,
                          ),
                          child: allIcons.foodIcons,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0),
                          width: 60.0,
                          height: 60.0,
                          child: Text(AllText.categoryTextFood,
                          style: allStyles.homeCategoryTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],

                    ),
                    SizedBox(width: 90.0,),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),

                            ),
                            color: allColors.maruneLightColor,
                          ),
                          child: allIcons.fashionIcons,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0),
                          width: 60.0,
                          height: 60.0,
                          child: Text(AllText.categoryTextFation,
                            style: allStyles.homeCategoryTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],

                    ),
                    SizedBox(width: 90.0,),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),

                            ),
                            color: allColors.skyBlueColor,
                          ),
                          child: allIcons.handcraftedIcons,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0),
                          width: 60.0,
                          height: 60.0,
                          child: Text(AllText.categoryTextHand,
                            style: allStyles.homeCategoryTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],

                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              //Home Fashion Show Single products
              Container(
                width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.zero,
                  child: ListTile(
                        leading: Text(AllText.fashionTitleText,style: allStyles.fashionTitleStyle,),
                        trailing: TextButton(onPressed: (){}, child: Text(AllText.fashionAllLinkText, ),),
                     ),
                ),
              SizedBox(height: 10.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              //Hand Crafted section
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.zero,
                child: ListTile(
                  leading: Text(AllText.handTitleText,style: allStyles.fashionTitleStyle,),
                  trailing: TextButton(onPressed: (){}, child: Text(AllText.fashionAllLinkText, ),),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeHandCraftedBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.handSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.handSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              //Food section
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.zero,
                child: ListTile(
                  leading: Text(AllText.foodTitleText,style: allStyles.fashionTitleStyle,),
                  trailing: TextButton(onPressed: (){}, child: Text(AllText.fashionAllLinkText, ),),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFoodBannerImage,

                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.foodSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.foodSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      color: allColors.whitiColor,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 1.0,left: 1.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              color:allColors.grayLightColor,
                            ),
                            width: 140.0,
                            height: 210.0,
                            child: allImages.homeFashionBannerImage,
                          ),
                          Container(
                            width: 220.0,
                            height: 210.0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Text(AllText.fashionSingleTitle),
                                  trailing: allIcons.favoritIcons,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Text(AllText.fashionSingleDescription,style: allStyles.homeCategoryTextStyle,),
                                ),
                                ListTile(
                                  trailing: Text(AllText.fashionSinglePrice),
                                )
                              ],
                            ),
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


    );
  }
}
