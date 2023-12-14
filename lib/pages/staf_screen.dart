import 'package:assignment_one/model/staf_model.dart';
import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/page_data/all_styles.dart';
import 'package:assignment_one/page_data/all_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../controllers/staf_controller.dart';
class StafDashbord extends StatelessWidget {
   StafDashbord({super.key});

  TextEditingController idClt=TextEditingController();
  TextEditingController nameClt=TextEditingController();
  TextEditingController deptClt=TextEditingController();

   StafController stafController=Get.put(StafController());

   final Box box=Hive.box("notes");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text(AllText.stafAppBarTitle,style: allStyles.abbBarTitleStyle,),
  backgroundColor: allColors.grayLightColor,
),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showDilouge(context);
        },
        child: allIcons.stafAddIcon,
        backgroundColor: allColors.grayLightColor,
      ),

      //Body section

     body: GetBuilder<StafController>(builder: (_){
       return Padding(
         padding: const EdgeInsets.all(10.0),
         child: ValueListenableBuilder(
           valueListenable: box.listenable(),
           builder: (context, box, child) {
             return ListView.builder(
               shrinkWrap: true,
                 itemCount: box.keys.length,
                 itemBuilder: (context,index){

                 StafModel note=box.getAt(index);

                   return Card(
                     child: ListTile(
                       leading: Text(
                         note.id
                       ),
                       title: Text(note.name),
                       subtitle: Text(note.department),

                       // Edit & Dellet

                       trailing: Container(
                         width: 70.0,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             InkWell(
                               onTap: (){
                                 _showUpdateDilouge(context, index);
                               },
                               child: allIcons.stafEditIcon,
                             ),
                             InkWell(
                               onTap: (){
                                 stafController.delletNote(index);
                               },
                               child: allIcons.stafDelletIcon,
                             ),
                           ],
                         ),
                       ),

                     ),
                   );
                 });
           }
         ),
       );
     },),

    );
  }



   //Custome Method 02

   _showUpdateDilouge(BuildContext context, int index){
     return showDialog(context: context, builder: (_){
       return Center(
         child: SingleChildScrollView(
           child: AlertDialog(
             content: Column(
               children: [
                 TextField(
                   controller: idClt,
                   decoration: InputDecoration(
                     hintText: AllText.stafIdHintText,
                   ),
                 ),
                 SizedBox(height: 10.0,),
                 TextField(
                   controller: nameClt,
                   decoration: InputDecoration(
                     hintText: AllText.stafNameHintText,
                   ),
                 ),
                 SizedBox(height: 10.0,),
                 TextField(
                   controller: deptClt,
                   decoration: InputDecoration(
                     hintText: AllText.stafDeptHintText,
                   ),
                 ),
               ],
             ),
             actions: [
               ElevatedButton(onPressed: (){

                 Navigator.pop(context);
               }, child: Text(AllText.stafCancelText, style: TextStyle(color: allColors.whitiColor),),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: allColors.maruneLightColor,
                 ),

               ),
               ElevatedButton(onPressed: (){
                 stafController.updateNote(StafModel(idClt.text, nameClt.text, deptClt.text,),index);
                 Navigator.pop(context);
               }, child: Text(AllText.stafUpdateText, style: TextStyle(color: allColors.whitiColor),),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: allColors.deepBlueColor,
                 ),

               ),
             ],
           ),
         ),
       );
     });
   }

  //Custome Method 01

  _showDilouge(BuildContext context){
      return showDialog(context: context, builder: (_){
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              content: Column(
                children: [
                  TextField(
                    controller: idClt,
                    decoration: InputDecoration(
                      hintText: AllText.stafIdHintText,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: nameClt,
                    decoration: InputDecoration(
                      hintText: AllText.stafNameHintText,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    controller: deptClt,
                    decoration: InputDecoration(
                      hintText: AllText.stafDeptHintText,
                    ),
                  ),
                ],
              ),
              actions: [
                ElevatedButton(onPressed: (){

                  Navigator.pop(context);
                }, child: Text(AllText.stafCancelText, style: TextStyle(color: allColors.whitiColor),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: allColors.maruneLightColor,
                ),

                ),
                ElevatedButton(onPressed: (){
                  stafController.createNote(StafModel(idClt.text, nameClt.text, deptClt.text));
                  Navigator.pop(context);
                }, child: Text(AllText.stafSubmitText, style: TextStyle(color: allColors.whitiColor),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: allColors.deepBlueColor,
                  ),

                ),
              ],
            ),
          ),
        );
      });
  }

}




