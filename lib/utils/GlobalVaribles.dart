import 'package:flutter/material.dart';
import 'package:watch_me_travel/pages/AddPost.dart';
import 'package:watch_me_travel/pages/FeedPage.dart';
import 'package:watch_me_travel/pages/ProfilePage.dart';
import 'package:watch_me_travel/pages/SearchPage.dart';

const webSizeScreen = 600;

const homeScreenItems = [
  FeedPage(),
  SearchPage(),
  AddPostScreen(),
  Center(child: Text('Likes')),
  ProfilePage(),
];
