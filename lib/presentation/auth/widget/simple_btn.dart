import 'package:flutter/material.dart';

class SimpleBtn extends StatelessWidget {
  const SimpleBtn({
    Key? key,
    required this.child,
    required this.onTap,
    this.color = const Color(0xFF5580EE),
  }) : super(key: key);

  final Function onTap;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith(
              (states) => states.contains(MaterialState.pressed) ? 3 : 1),
          backgroundColor: MaterialStateProperty.resolveWith((states) => color),
        ),
        child: child,
      ),
    );
  }
}
