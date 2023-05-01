import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menem_social_media/constants.dart';
import 'package:menem_social_media/controller/bottom_navbar_controller.dart';
import 'package:menem_social_media/views/write_post_screen.dart';

class BottomNavbar extends GetView<BottomNavbarController> {
  BottomNavbar({super.key});

  final bottomNavController = Get.put(BottomNavbarController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: bottomNavController.screens[bottomNavController.index.value],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 2) {
              _showBottomSheet(context);
            }
            bottomNavController.index.value = value;
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          currentIndex: bottomNavController.index.value,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_sharp),
              label: 'ScreenTwo',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus_square_on_square),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_rounded),
              label: 'IGTV',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.black.withOpacity(0.6),
          height: height * 0.25, 
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(Icons.close)),
                      const Text(
                        "Create Post",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                   ),
                  SizedBox(height: height * 0.015),
                   ListTile(
                    onTap: () => Get.to( WritePostScreen()),
                    leading: const Icon(Icons.edit_calendar_outlined,color: Colors.black,),
                    title: const Text(
                      "What would you like to talk?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                   const ListTile(
                    leading: Icon(Icons.image,color: Colors.black,),
                    title: Text(
                      "Add a photo", 
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
