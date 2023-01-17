import 'package:flutter/material.dart';
import '../../../application/product/product_actor/product_actor_bloc.dart';
import '../../constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'month_picker.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key, required this.date}) : super(key: key);

  final DateTime date;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  int year = 0;
  int month = 1;
  late final double dialogPadding = (MediaQuery.of(context).size.width - 250) / 2;

  @override
  void initState() {
    year = widget.date.year;
    month = widget.date.month;
    super.initState();
  }

  void monthChanged(int month) {
    this.month = month;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: dialogPadding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          clipBehavior: Clip.hardEdge,
          child: Container(
            color: white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 48,
                  padding: const EdgeInsets.only(top: 8),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => setState(() => year--),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Icon(Icons.chevron_left_rounded, color: greyLight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$year',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18, color: greyLight),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => year++),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Icon(Icons.chevron_right_rounded, color: greyLight),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: MonthPicker(monthChanged: monthChanged),
                ),
                SizedBox(
                  width: 250,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      context.read<ProductActorBloc>().dateTime = DateTime(year, month);
                      String apartmentId = context.read<ProductActorBloc>().publicExpenseId;
                      // DateTime date = context.read<ProductActorBloc>().dateTime;
                      context.read<ProductActorBloc>().add(ProductActorEvent.watch(apartmentId));
                    },
                    child: const SizedBox(
                      height: 40,
                      child: Text(
                        'Ok',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
