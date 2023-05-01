import 'package:flutter/material.dart';
import 'package:menem_social_media/constants.dart';

class LikedUsersImage extends StatelessWidget {
  const LikedUsersImage({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Image.network(
          profilePic,
          fit: BoxFit.cover,
          height: width * 0.045,
          width: width * 0.045,
        ),
      ),
    );
  }
}