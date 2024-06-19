import 'package:flutter/material.dart';

import 'componets/icons.dart';
import 'componets/wallpaper.dart';


class AsyncWallpaperHomepage extends StatelessWidget {
  const AsyncWallpaperHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Set Wallpaper'),
      ),

      body: const Column(
        children: [
          WallpaperImage(),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconWithLable(lable: 'Home',),
                IconWithLable(lable: 'Lock',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}