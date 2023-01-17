import 'package:flutter/material.dart';
import '../../../../application/profile/profile_bloc.dart';
import '../../../constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileColorPicker extends StatefulWidget {
  const ProfileColorPicker({Key? key, required this.color}) : super(key: key);

  final int color;

  @override
  State<ProfileColorPicker> createState() => _ProfileColorPickerState();
}

class _ProfileColorPickerState extends State<ProfileColorPicker> {
  late double circleSize = (MediaQuery.of(context).size.width - 112) / 6;

  late int selectedColor = widget.color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getColoredCircles(),
    );
  }

  List<Widget> getColoredCircles() {
    return userChartColors
        .map((e) => Padding(
              padding: const EdgeInsets.all(4),
              child: GestureDetector(
                onTap: () {
                  setState(() => selectedColor = e.value);
                  context.read<ProfileBloc>().add(ProfileEvent.colorChanged(e.value));
                },
                child: Container(
                  height: circleSize,
                  width: circleSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: e,
                    boxShadow: const [
                      BoxShadow(color: greyLight, blurRadius: 1, spreadRadius: 0.2)
                    ],
                    border: selectedColor == e.value
                        ? Border.all(
                            color: white,
                            width: 2,
                            style: BorderStyle.solid,
                          )
                        : null,
                  ),
                ),
              ),
            ))
        .toList();
  }
}
