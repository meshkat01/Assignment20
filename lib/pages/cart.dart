import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/page_data/all_images.dart';
import 'package:assignment_one/page_data/all_styles.dart';
import 'package:assignment_one/page_data/all_text.dart';
import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: allColors.grayLightColor,
        title: Text(AllText.cartPageTitle, style: allStyles.categorysPageTitleStyle,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: allIcons.cartHomeIcon,
          ),
        ],
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 15.0,right: 15.0),
          child: Column(
            children: [
              Container(
                height: 300.0,
                child: allImages.cartPageEmptyImage,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(AllText.cartEmpTitleText),
                        SizedBox(height: 20.0,),
                        Text(AllText.cartEmpDescripText),
                        SizedBox(height: 40.0,),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(onPressed: (){}, child: Text(AllText.cartEmpButtonText),)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
