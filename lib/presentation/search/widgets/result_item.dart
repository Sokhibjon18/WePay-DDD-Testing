import 'package:flutter/material.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/presentation/search/widgets/join_dialog.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({Key? key, required this.apartment}) : super(key: key);

  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(context: context, builder: (_) => JoinDialog(apartment: apartment));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${apartment.region}, ${apartment.district}, ${apartment.street}, ${apartment.houseNumber}${apartment.flatNumber.isEmpty ? '' : ', ${apartment.flatNumber}'}',
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            const Text(
              'Roommates: Me, Example, Examle2',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
    );
  }
}
