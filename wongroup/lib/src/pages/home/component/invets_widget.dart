import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_boilerplate/gen/assets.gen.dart';
import 'package:get_boilerplate/src/public/styles.dart';
import 'package:get_boilerplate/src/public/widget/button_primary_widget.dart';

class InvestmentWidget extends StatelessWidget {
  const InvestmentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            Assets.images.homeScaled.path,
            height: Get.height * 0.8,
            fit: BoxFit.cover,
            width: Get.width,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Lĩnh vực đầu tư',
                        style: TextStyles.black32,
                      ),
                      Text('WON GROUP')
                    ],
                  ),
                ),
              ),
              InvestmentSectorWidget(),
              InvestmentSectorWidget(),
              InvestmentSectorWidget(),
            ],
          )
        ],
      ),
    );
  }
}

class InvestmentSectorWidget extends StatelessWidget {
  const InvestmentSectorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://wongroup.com.vn/wp-content/uploads/2021/08/la-nga-wonder-house-3.jpg',
                    scale: 1),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1',style: TextStyles.white20Thin),
            SizedBox(height: 10),
            Text('Lĩnh vực',style: TextStyles.whiteThin),
            SizedBox(height: 10),
            Text('Phân phối dự án'.toUpperCase(),style: TextStyles.white20,),
            SizedBox(height: 20),
            ButtonPrimaryWidget()
          ],
        ),
      ),
    );
  }
}