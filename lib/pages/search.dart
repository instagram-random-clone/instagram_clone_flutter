import 'package:flutter/material.dart';

import '../utils/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextField(
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(left: 6, right: 6, top: 1, bottom: 1),
                filled: true,
                fillColor: Colors.grey[300],
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 0.0),
                ),
                border: const OutlineInputBorder(),
                hintText: ' Search',
                hintStyle: TextStyle(color: Colors.grey[500])),
          ),
        ),
        body: const Padding(
          padding:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
          child: ExploreGrid(),
        ));
  }
}
