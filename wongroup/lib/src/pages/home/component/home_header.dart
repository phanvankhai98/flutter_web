import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_boilerplate/gen/assets.gen.dart';
import 'package:get_boilerplate/responsive.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.13,
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildButton(text: 'Trang chủ'),
                  _buildButton(text: 'Giới thiệu'),
                  _buildButton(text: 'Dự án'),
                  _buildButton(text: 'Lĩnh vực'),
                ],
              ),
            ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(Assets.icons.icLogo.path)),
          if (Responsive.isDesktop(context))
            Expanded(
              child: Row(
                children: [
                  _buildButton(text: 'Trang chủ'),
                  _buildButton(text: 'Giới thiệu'),
                  _buildButton(text: 'Dự án'),
                  _buildButton(text: 'Lĩnh vực'),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildButton({String? text}) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(text ?? ''),
      ),
    );
  }
}
