import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menem_social_media/constants.dart';
import 'package:menem_social_media/views/widgets/interactive_buttons.dart';
import 'package:menem_social_media/views/widgets/liked_users_image_widget.dart';

class PostListview extends StatelessWidget {
  const PostListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Material(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(width * 0.032),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://cdn.logojoy.com/wp-content/uploads/2018/08/23161039/3-24.png",
                        fit: BoxFit.cover,
                        height: width * 0.12,
                        width: width * 0.12,
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Miles Education",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: width * 0.012),
                        RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.access_time_outlined,
                                  size: 13,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: "1 day ago",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: height * 0.025,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 175, 184, 175)
                                    .withOpacity(0.5),
                            elevation: 0),
                        child: const Text(
                          "Boost",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 21,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.032),
                child: const Text(
                  """Turn your dream of working in a US, a reality! With a 96% visa acceptance rate, @first kind Miles of its kind “Global Tamil #Startup ...see more""",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: width * 0.025),
              Image.network(
                  "https://www.usnews.com/object/image/00000184-593f-d65c-ade5-fd3ff96c0000/gettyimages-1148139663.jpg?update-time=1667944864502&size=responsive640"),
              Padding(
                padding: EdgeInsets.all(width * 0.03),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.3,
                          child: Stack(
                            children: const [
                              Positioned(
                                  left: 24,
                                  child: LikedUsersImage(
                                    profilePic:
                                        "https://cdn.logojoy.com/wp-content/uploads/2018/08/23161039/3-24.png",
                                  )),
                              Positioned(
                                  left: 12,
                                  child: LikedUsersImage(
                                    profilePic:
                                        "https://cdn.logojoy.com/wp-content/uploads/2018/08/23161039/3-24.png",
                                  )),
                              LikedUsersImage(
                                  profilePic:
                                      "https://cdn.logojoy.com/wp-content/uploads/2018/08/23161039/3-24.png"),
                            ],
                          ),
                        ),
                        const Text("99.5K Likes"),
                        const Spacer(),
                        const Text("99.5K Kudos"),
                        const Text(" . 567 views"),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        InteractiveButtons(
                          label: "Like",
                          icon: CupertinoIcons.star,
                        ),
                        InteractiveButtons(
                          label: "Kudos",
                          icon: CupertinoIcons.chat_bubble,
                        ),
                        InteractiveButtons(
                          label: "Send",
                          icon: CupertinoIcons.paperplane,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 212, 207, 200),
                thickness: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
