

import 'package:flutter_firebase_practice/profile/profile.dart';
import 'package:flutter_firebase_practice/topics/topics.dart';

import 'about/about.dart';
import 'home/home.dart';
import 'login/login.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profiles': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};