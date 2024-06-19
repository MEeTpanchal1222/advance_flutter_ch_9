import 'package:advance_flutter_ch_9/9_2/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '9_1/post_api_calling/provider/provider.dart';
import '9_1/post_api_calling/view/screen.dart';
import '9_2/home page/home_page.dart';
import 'async_wallpaper/async_wallpaper.dart';
import 'async_wallpaper/screen/provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  PostApiProvider post =  PostApiProvider();

  runApp(MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => WallpaperProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) =>post),
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
      //home: HomePage(),
      home: PostsApiHomePage(),
    );
  }
}