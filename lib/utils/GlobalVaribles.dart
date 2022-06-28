import 'package:flutter/material.dart';
import 'package:watch_me_travel/pages/AddPost.dart';
import 'package:watch_me_travel/pages/FeedPage.dart';

const webSizeScreen = 600;

const homeScreenItems = [
  FeedPage(),
  Center(child: Text('Search')),
  AddPostScreen(),
  Center(child: Text('Likes')),
  Center(child: Text('Profile')),
];
