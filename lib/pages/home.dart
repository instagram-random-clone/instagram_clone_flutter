import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/utils/bubble_stories.dart';
import 'package:instagram_clone_flutter/utils/user_post.dart';

class UserHome extends StatelessWidget {
  final List _people = [
    "Payton",
    "Mauricio",
    "Kailyn",
    "Jenny",
    "Ahmed",
    "Christina",
    "Finley",
    "Raegan",
    "Kingston",
    "Jordan",
    "Urijah",
    "Kaydence",
    "Jamir",
    "Jazlyn",
    "Gary",
    "Miles",
    "Alberto",
    "Chaz",
    "Charlize",
    "Jamar",
  ];
  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            // STORIES
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: _people.length,
                itemBuilder: ((context, index) =>
                    BubbleStories(text: _people[index])),
                scrollDirection: Axis.horizontal,
              ),
            ),
            // POSTS
            Expanded(
              child: ListView.builder(
                itemCount: _people.length,
                itemBuilder: ((context, index) =>
                    UserPost(name: _people[index])),
              ),
            ),
          ],
        ));
  }
}
