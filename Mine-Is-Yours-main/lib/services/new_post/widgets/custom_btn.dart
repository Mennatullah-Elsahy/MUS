import 'package:flutter/material.dart';

import '../../../helpers/app_text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    required this.text,
    required this.onTap,
    this.fontSize = 14,
    this.icon,
  }) : super(key: key);
  final String text;
  final int fontSize;
  final IconData? icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 15,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
        height: 60,
        child: Row(
          children: [
            if(icon != null) Expanded(flex: 1,child: Icon(icon,color: Colors.white)),
            Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                text,
                style: AppTextStyles.w700.copyWith(fontSize: fontSize.toDouble(), color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
