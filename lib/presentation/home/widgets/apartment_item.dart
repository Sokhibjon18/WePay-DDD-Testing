import 'package:flutter/material.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';

class ApartmentItem extends StatelessWidget {
  const ApartmentItem({Key? key, required this.apartment}) : super(key: key);

  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.54,
            margin: const EdgeInsets.only(left: 10, bottom: 6, top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${apartment.region}, ${apartment.district}, ${apartment.street}, ${apartment.houseNumber}, ${apartment.region}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                const Text(
                  'Roommates: Me, Example, Examle2',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  //softWrap: true,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.green,
            child: const Center(
              child: Text(
                'Jan: 0 sum',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
