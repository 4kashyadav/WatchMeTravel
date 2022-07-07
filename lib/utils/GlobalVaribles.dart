import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watch_me_travel/pages/AddPost.dart';
import 'package:watch_me_travel/pages/FeedPage.dart';
import 'package:watch_me_travel/pages/ProfilePage.dart';
import 'package:watch_me_travel/pages/SearchPage.dart';

const webSizeScreen = 600;

List<Widget> homeScreenItems = [
  const FeedPage(),
  const SearchPage(),
  const AddPostScreen(),
  const Center(child: Text('Likes')),
  ProfilePage(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
