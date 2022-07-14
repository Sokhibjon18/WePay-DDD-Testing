import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class MonthPicker extends StatefulWidget {
  const MonthPicker({Key? key, required this.monthChanged}) : super(key: key);

  final Function(int month) monthChanged;

  @override
  State<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPicker> {
  late int selectedMonth;

  @override
  void initState() {
    selectedMonth = context.read<ProductActorBloc>().dateTime.month;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        monthRow([monthBtn(1, 'Jan'), monthBtn(2, 'Feb'), monthBtn(3, 'Mar')]),
        monthRow([monthBtn(4, 'Apr'), monthBtn(5, 'May'), monthBtn(6, 'Jun')]),
        monthRow([monthBtn(7, 'Jul'), monthBtn(8, 'Aug'), monthBtn(9, 'Sep')]),
        monthRow([monthBtn(10, 'Oct'), monthBtn(11, 'Now'), monthBtn(12, 'Dec')]),
      ],
    );
  }

  Widget monthRow(List<Widget> monthes) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: monthes,
      );

  Widget monthBtn(int order, String name) {
    return GestureDetector(
      onTap: () {
        widget.monthChanged(order);
        setState(() => selectedMonth = order);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: BoxDecoration(
          color: selectedMonth == order ? green : white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: selectedMonth == order ? white : black,
            letterSpacing: 0.8,
          ),
        ),
      ),
    );
  }
}
