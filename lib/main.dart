import 'package:advance_flutter_ch_9/9_2/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '9_2/home page/home_page.dart';
import 'async_wallpaper/async_wallpaper.dart';
import 'async_wallpaper/screen/provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => WallpaperProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      //home: const AsyncWallpaperExample(),
      home: HomePage(),
    );
  }
}