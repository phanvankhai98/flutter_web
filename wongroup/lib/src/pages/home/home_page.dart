import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_boilerplate/gen/assets.gen.dart';
import 'package:get_boilerplate/responsive.dart';
import 'package:get_boilerplate/src/public/constant.dart';
import 'package:get_boilerplate/src/public/styles.dart';
import 'package:get_boilerplate/src/theme/theme_service.dart';

import '../../public/widget/button_primary_widget.dart';
import 'component/home_header.dart';
import 'component/invets_widget.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            InvestmentWidget(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(36),
              color: Colors.blueAccent,
              child: Column(
                children: [
                  Image.asset(
                    Assets.icons.icWhite.path,
                    width: 100,
                  ),
                  Text('HÀ NỘI', style: TextStyles.white20),
                  SizedBox(height: 20),
                  Text('Điện Thoại', style: TextStyles.white16),
                  SizedBox(height: 10),
                  Text('(+84) 962 713 102', style: TextStyles.white16Thin),
                  SizedBox(height: 20),
                  Text('Email', style: TextStyles.white16),
                  SizedBox(height: 10),
                  Text('info@wonhomes.com.vn', style: TextStyles.white16Thin),
                  SizedBox(height: 20),
                  Text('Địa chỉ', style: TextStyles.white20),
                  SizedBox(height: 10),
                  Text(
                      'Tầng 10 tòa nhà VTC, số 18 phố Tam Trinh, phường Minh Khai, quận Hai Bà Trưng, Thành phố Hà Nội.',
                      style: TextStyles.white16Thin),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
