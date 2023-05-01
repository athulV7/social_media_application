import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostController extends GetxController {
  
   File? profilePic; 

  pickCamera() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);

    if (image != null) {
       profilePic = File(image.path);
       update();
    }
  }

  pickImageFromGallery() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
       profilePic = File(image.path);
       update();
    }
  }
}
