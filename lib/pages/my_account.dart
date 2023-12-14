import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/page_data/all_styles.dart';
import 'package:assignment_one/page_data/all_text.dart';
import 'package:assignment_one/pages/home.dart';
import 'package:assignment_one/pages/storage_utils.dart';
import 'package:assignment_one/pages/wishlist.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

  final _key=GlobalKey<FormState>();

TextEditingController contName=TextEditingController();
TextEditingController contEmail=TextEditingController();
TextEditingController contPass=TextEditingController();

bool secqureText=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: allColors.grayLightColor,
        title: Text(AllText.registrationTitleText, style: allStyles.categorysPageTitleStyle,),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 5.0,
              child: Form(
                key: _key,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Container(
                          width: 60.0,
                            height: 60.0,
                            child: allIcons.myAccoutIcon,
                        ),
                      ),
                      SizedBox(height: 35.0,),
                      //Name Filed
                      Container(
                        decoration: BoxDecoration(
                          color: allColors.grayLightColor,
                          borderRadius: BorderRadius.circular(25.0),

                        ),
                            child: TextFormField(
                                decoration: InputDecoration(

                                  hintText: AllText.nameHintText,
                                contentPadding: EdgeInsets.only(left: 15.0,right: 10.0),
                                border: InputBorder.none
                              ),
                              controller: contName,
                              validator: (value){
                                  if(value!.isEmpty){
                                    return AllText.emptyHintText;
                                  }
                              },
                            ),

                      ),
                      SizedBox(height: 15.0,),
                      // Email Filed
                      Container(
                        decoration: BoxDecoration(
                          color: allColors.grayLightColor,
                          borderRadius: BorderRadius.circular(25.0),

                        ),
                        child: TextFormField(
                          decoration: InputDecoration(

                              hintText: AllText.emailHintText,
                              contentPadding: EdgeInsets.only(left: 15.0,right: 10.0),
                              border: InputBorder.none
                          ),
                          controller: contEmail,
                          validator: (value){
                            if(value!.isEmpty){
                              return AllText.emptyHintText;
                            }
                          },
                        ),

                      ),
                      SizedBox(height: 15.0,),
                      // PassWord Filed
                      Container(
                        decoration: BoxDecoration(
                          color: allColors.grayLightColor,
                          borderRadius: BorderRadius.circular(25.0),

                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: AllText.passHintText,
                              suffixIcon: InkWell(
                                onTap: (){
                                  setState(() {
                                    secqureText=!secqureText;
                                  });
                                },
                                  child: secqureText?allIcons.secqureOffIcon: allIcons.secqureOpenIcon,
                              ),
                              contentPadding: EdgeInsets.only(left: 15.0,right: 10.0,top: 15.0),
                              border: InputBorder.none
                          ),
                          obscureText: secqureText,
                          controller: contPass,
                          validator: (value){
                            if(value!.isEmpty){
                              return AllText.emptyHintText;
                            }
                          },
                        ),

                      ),
                      SizedBox(height: 15.0,),

                      Container(
                        width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(onPressed: (){
                              if(_key.currentState!.validate()){
                                _key.currentState!.save();

                                StorageUtils.setLoginData(false);
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> WishlistPage()));
                              }
                            }, child: Text(AllText.submitRegistrationText)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
