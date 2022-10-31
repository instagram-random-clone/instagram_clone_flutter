import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/utils/account_tab1.dart';
import 'package:instagram_clone_flutter/utils/account_tab2.dart';
import 'package:instagram_clone_flutter/utils/account_tab3.dart';
import 'package:instagram_clone_flutter/utils/account_tab4.dart';
import 'package:instagram_clone_flutter/utils/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "iamalipe",
                  style: TextStyle(color: Colors.black),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Profile image
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey[300], shape: BoxShape.circle),
                ),
                // number of post, followers, following
                Column(
                  children: const [
                    Text(
                      "232",
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    Text("Posts"),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "987",
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    Text("Followers"),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "23",
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    Text("Following"),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Abhiseck",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    "Try to be a full stack developer",
                  ),
                  Text(
                    "https://abhiseck.me",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text("Edit Profile"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text("Setting"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text("Tools"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BubbleStories(text: "Story 01"),
                    BubbleStories(text: "Story 02"),
                    BubbleStories(text: "Story 03"),
                    BubbleStories(text: "Story 04"),
                    BubbleStories(text: "Story 05"),
                    BubbleStories(text: "Story 06"),
                    BubbleStories(text: "Story 07"),
                  ],
                ),
              ),
            ),
            const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_3x3_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.video_call,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ]),
            const Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
