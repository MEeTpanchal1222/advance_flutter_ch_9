
import 'package:advance_flutter_ch_9/async_wallpaper/screen/view/async_wallpaper_screen.dart';
import 'package:flutter/material.dart';

class AsyncWallpaperExample extends StatelessWidget {
  const AsyncWallpaperExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const AsyncWallpaperHomepage(),
    );
  }
}
