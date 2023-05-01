import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menem_social_media/constants.dart';
import 'package:menem_social_media/views/widgets/post_listview.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.035),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chat_bubble_text),
                ),
              ],
            ),
            const Divider(
                color: Color.fromARGB(255, 212, 207, 200), thickness: 10),

            //---to show all posts listview---------------
            const PostListview(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Suggestions for you",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.2 ,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.03),
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  //physics: NeverScrollableScrollPhysics(), 
                  itemBuilder: (context, index) => Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), 
                        child: Image.network(
                          "https://qph.cf2.quoracdn.net/main-thumb-161841968-200-xtisrhulnnwiuyeojsvojtoqjrqsglrj.jpeg",
                          fit: BoxFit.cover,
                          height: width / 2.4,
                          width: width / 2.7,
                        ),
                      ),SizedBox(width: width * 0.017), 
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
