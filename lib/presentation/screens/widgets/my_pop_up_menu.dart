import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class MyPopUpMenu extends StatelessWidget {
  const MyPopUpMenu({Key? key, required this.moreIconRectCordinates, required this.popUpItems})
      : super(key: key);

  final Rect moreIconRectCordinates;
  final List<MyPopUpMenuItem> popUpItems;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: MediaQuery.of(context).size.width - moreIconRectCordinates.right,
          top: moreIconRectCordinates.top -
              (moreIconRectCordinates.bottom - moreIconRectCordinates.top),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 2, right: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: grey,
                  boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 6)],
                ),
                child: const Icon(Icons.more_horiz_rounded, color: blue),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(color: Colors.black38, blurRadius: 6, offset: Offset(0, 4))
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: popUpItems,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyPopUpMenuItem extends StatelessWidget {
  const MyPopUpMenuItem({
    Key? key,
    required this.svgPath,
    required this.text,
    required this.action,
  }) : super(key: key);

  final String svgPath;
  final String text;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        action();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            SvgPicture.asset(svgPath),
            const SizedBox(width: 12),
            Text(text),
          ],
        ),
      ),
    );
  }
}
