import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/colors.dart';

showSnackbar(BuildContext context, SnackbarStatus status, String text) {
  late final SvgPicture icon;
  switch (status) {
    case SnackbarStatus.error:
      icon = SvgPicture.asset('assets/svg/error.svg');
      break;
    case SnackbarStatus.warning:
      icon = SvgPicture.asset('assets/svg/warning.svg');
      break;
    case SnackbarStatus.success:
      icon = SvgPicture.asset('assets/svg/done.svg');
      break;
  }
  final snacbar = SnackBar(
    backgroundColor: greyLight,
    duration: const Duration(seconds: 3),
    behavior: SnackBarBehavior.fixed,
    content: Row(
      children: [
        icon,
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: black, fontSize: 15, letterSpacing: 0.2),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snacbar);
}

enum SnackbarStatus {
  error,
  warning,
  success,
}
