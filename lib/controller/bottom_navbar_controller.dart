import 'package:get/get.dart';
import 'package:menem_social_media/views/igtv_section.dart';
import 'package:menem_social_media/views/profileScreen.dart';
import 'package:menem_social_media/views/screen_home.dart';
import 'package:menem_social_media/views/screen_two.dart';

class BottomNavbarController extends GetxController {
  var index = 0.obs;

  final screens = [
    const ScreenHome(),
    const ScreenTwo(),
    const ScreenHome(),
    const IGTVsection(),
    const ProfileScreen(),
  ];
}