import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../model/staf_model.dart';

class StafController extends GetxController{

  final Box box=Hive.box("notes");

  void createNote(StafModel note){
    box.add(note);

  }


  void updateNote(StafModel note, int index){
      box.putAt(index, note);
  }
  void delletNote(int index) {
box.deleteAt(index);
  }

}