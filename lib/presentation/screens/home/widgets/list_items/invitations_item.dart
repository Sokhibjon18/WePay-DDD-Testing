import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/request/request_bloc.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class InvitationItem extends StatelessWidget {
  const InvitationItem({Key? key, required this.request}) : super(key: key);

  final RequestToJoin request;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 14),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${request.publicExpenseName} ro`yxatiga taklif',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            request.email,
            style: const TextStyle(fontSize: 15),
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
          const SizedBox(height: 6),
          BlocBuilder<RequestBloc, RequestState>(
            builder: (context, state) {
              return state.isLoading
                  ? const Text(
                      'Loading...',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        letterSpacing: 0.2,
                        color: green,
                      ),
                    )
                  : Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<RequestBloc>().add(RequestEvent.acceptRequest(request));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: blue,
                            ),
                            child: const Text(
                              'Qabul qilish',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            context.read<RequestBloc>().add(RequestEvent.rejectRequest(request));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: grey,
                            ),
                            child: const Text(
                              'Rad etish',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                color: red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
            },
          ),
        ],
      ),
    );
  }
}
