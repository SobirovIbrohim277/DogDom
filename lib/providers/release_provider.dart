import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ReleaseProvider extends ChangeNotifier {
  List<XFile> listOfImg = [];

  void addImg(XFile product) {
    listOfImg.add(product);
    notifyListeners();
  }

  dismissItem(int index) {
    listOfImg.removeAt(index);
    notifyListeners();
  }
}
