import 'package:get/get.dart';

class BodyPageController extends GetxController{
  int _tabIndex = 0;
  increment() => _tabIndex ++;

  int get tabIndex => _tabIndex;
  set tabIndex (int idx) => _tabIndex = idx;
}