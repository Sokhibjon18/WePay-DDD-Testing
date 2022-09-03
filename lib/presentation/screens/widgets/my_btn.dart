import 'package:flutter/material.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class MyBtn extends StatelessWidget {
  const MyBtn({
    Key? key,
    required this.child,
    required this.onTap,
    this.color = blue,
    this.elevation = 1,
  }) : super(key: key);

  final Function onTap;
  final Color color;
  final Widget child;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith(
              (states) => states.contains(MaterialState.pressed) ? 3 : elevation),
          backgroundColor: MaterialStateProperty.resolveWith((states) => color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
