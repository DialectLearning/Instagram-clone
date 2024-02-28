import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/addpost/add_post_screen.dart';
import 'package:instagram_clone/home/home_screen.dart';
import 'package:instagram_clone/like/like_screen.dart';
import 'package:instagram_clone/my_account/my_account.dart';
import 'package:instagram_clone/search/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          SearchScreen(),
          AddPostScreen(),
          LikeScreen(),
          MyAccountScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          fixedColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/home.svg'),
              label: "",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('asset/search.svg'), label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('asset/add_postt.svg'), label: ""),
            BottomNavigationBarItem(
              label: "",
              icon: SvgPicture.asset('asset/Like.svg'),
            ),
            BottomNavigationBarItem(
                label: "", icon: SvgPicture.asset('asset/Like.svg'))
          ]),
    );
  }
}
