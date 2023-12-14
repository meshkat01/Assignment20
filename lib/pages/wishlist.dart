import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/page_data/all_images.dart';
import 'package:assignment_one/page_data/all_styles.dart';
import 'package:assignment_one/page_data/all_text.dart';
import 'package:assignment_one/pages/home.dart';
import 'package:assignment_one/pages/storage_utils.dart';
import 'package:flutter/material.dart';

import 'my_account.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        actions: [
          ElevatedButton(onPressed: (){
            StorageUtils.setLoginData(true);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyAccount()));
          }, child: allIcons.logOutIcons)
        ],
        elevation: 0,
        backgroundColor: allColors.grayLightColor,
        title: Text(AllText.wishlistPageTitleText, style: allStyles.categorysPageTitleStyle,),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 15.0,right: 15.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(AllText.wishlistPageSubTitleText),
                        SizedBox(height: 20.0,),
                        Text(AllText.cartEmpDescripText),

                      ],
                    ),
                  ),
                ),
              ),
              Row(
                  children: [
                    Card(
                      elevation: 2.5,

                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 142.0,
                              height: 150.0,
                              child:allImages.homeFoodBannerImage,),
                            Container(
                             child: Text(AllText.wishlistProduct1Text,style: allStyles.wishlistProductNameStyle,),),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Card(
                      elevation: 2.5,

                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 150.0,
                              height: 142.0,
                              child:allImages.homeFashionBannerImage,),
                            Container(
                              child: Text(AllText.wishlistProduct3Text,style: allStyles.wishlistProductNameStyle,),),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
              Row(
                children: [
                  Card(
                    elevation: 2.5,

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: 142.0,
                            height: 150.0,
                            child:allImages.homeFoodBannerImage,),
                          Container(
                            child: Text(AllText.wishlistProduct1Text,style: allStyles.wishlistProductNameStyle,),),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Card(
                    elevation: 2.5,

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150.0,
                            height: 142.0,
                            child:allImages.homeFoodBannerImage,),
                          Container(
                            child: Text(AllText.wishlistProduct1Text,style: allStyles.wishlistProductNameStyle,),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
