import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/search/search_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(8)),
            height: 36,
            padding: const EdgeInsets.only(top: 2),
            child: TextField(
              maxLength: 20,
              cursorColor: blue,
              onSubmitted: (value) {
                context.read<SearchBloc>().add(SearchEvent.search(value));
              },
              decoration: const InputDecoration(
                hintText: 'Street, region or house number',
                contentPadding: EdgeInsets.only(left: 8),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                counterStyle: TextStyle(height: double.minPositive),
                counterText: '',
              ),
              autocorrect: false,
            ),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
