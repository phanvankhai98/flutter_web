import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_boilerplate/gen/assets.gen.dart';
import 'package:get_boilerplate/responsive.dart';
import 'package:get_boilerplate/src/public/constant.dart';
import 'package:get_boilerplate/src/theme/theme_service.dart';

import 'component/home_header.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.refresh,
          size: width / 16.0,
        ),
        onPressed: () {
          ThemeService().changeThemeMode();
        },
      ),
      body: Column(
        children: [
          HomeHeader(),
          Container(
            child: Column(
              children: [
                Image.asset(
                  Assets.images.homeScaled.path,
                  height: Get.height * 0.8,
                  fit: BoxFit.cover,
                  width: Get.width,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
