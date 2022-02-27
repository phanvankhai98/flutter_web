import 'package:flutter/material.dart';
import 'package:get_boilerplate/gen/colors.gen.dart';
import 'package:get_boilerplate/src/public/styles.dart';

class ButtonPrimaryWidget extends StatefulWidget {
  const ButtonPrimaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ButtonPrimaryWidget> createState() => _ButtonPrimaryWidgetState();
}

class _ButtonPrimaryWidgetState extends State<ButtonPrimaryWidget> {
  bool isHovered = false;

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: InkWell(
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
                color: ColorName.primary.withOpacity(this.isHovered ? 0.7 : 1)),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text('Xem thêm',style: TextStyles.white,)),
      ),
    );
  }
}
