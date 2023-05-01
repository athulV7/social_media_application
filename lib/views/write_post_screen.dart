import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menem_social_media/controller/create_post_controller.dart';

import '../constants.dart';

class WritePostScreen extends GetView<CreatePostController> {
   WritePostScreen({super.key});

  final createPostController = Get.put(CreatePostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () { Get.back();createPostController.profilePic = null;}, 
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Create Post",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(width * 0.035),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 175, 184, 175).withOpacity(0.5),
                  elevation: 0),
              child: const Text(
                "Post",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.03),
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://qph.cf2.quoracdn.net/main-thumb-161841968-200-xtisrhulnnwiuyeojsvojtoqjrqsglrj.jpeg",
                      fit: BoxFit.cover,
                      height: width * 0.12,
                      width: width * 0.12,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mohan Raja",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: width * 0.012),
                      const Text(
                        "MeNeM ID",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              GetBuilder<CreatePostController>(
                builder: (context) {
                  return SizedBox(
                    height: height * 0.7,
                    child: Column(
                      children: [
                        const TextField(
                          keyboardType: TextInputType.multiline ,
                          maxLines: null, 
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "What you think?"), 
                        ),
                        SizedBox(height: height * 0.02), 
                        if(createPostController.profilePic != null)
                           Image.file(createPostController.profilePic!)
                      ],
                    ),
                    
                  );
                }
              ),
              
              Column(
                children: [
                  const Divider(),
                  Row(
                    children: [
                      SizedBox(width: width * 0.06),
                      Column(
                        children: [
                          GestureDetector(child: const Icon(Icons.camera_alt),onTap: () async{
                            await createPostController.pickCamera();
                          },),
                          const Text("Camera"),
                        ],
                      ),
                      SizedBox(width: width * 0.06),
                      Column(
                        children: [
                          GestureDetector(child: const Icon(Icons.photo_library_outlined),onTap: () async{
                            await createPostController.pickImageFromGallery();
                          },),
                          const Text("Gallery"),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
