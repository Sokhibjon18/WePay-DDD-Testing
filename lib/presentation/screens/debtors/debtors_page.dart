import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/screens/debtors/models/member.dart';
import 'package:we_pay/presentation/screens/debtors/models/member_to_member.dart';

class DebtorsPage extends StatefulWidget {
  DebtorsPage({required this.products, Key? key}) : super(key: key) {
    log(products.toString());
    List<String> userNames = [];
    for (var product in products) {
      if (!userNames.contains(product.buyerName)) {
        userNames.add(product.buyerName);
      }
    }
    for (var userName in userNames) {
      int expense = 0;
      products
          .where((element) => element.buyerName == userName)
          .map((e) => expense += (e.count * int.parse(e.price.getRight())).toInt())
          .toList();
      members.add(Member(userName, expense));
    }
  }

  final List<Product> products;
  final List<Member> members = [];

  @override
  State<DebtorsPage> createState() => _DebtorsPageState();
}

class _DebtorsPageState extends State<DebtorsPage> {
  List<Member> debtors = [];
  List<Member> getters = [];
  List<MemberToMember> result = [];

  @override
  void initState() {
    Member.calculateAverage(widget.members);
    populateDebtorsAndGetters();
    determineDebtors();

    super.initState();
  }

  void populateDebtorsAndGetters() {
    for (final member in widget.members) {
      member.calculateDifference();
      member.debtor ? debtors.add(member) : getters.add(member);
    }
  }

  void determineDebtors() {
    for (int i = 0; i < getters.length; i++) {
      for (int j = 0; j < debtors.length; j++) {
        if (getters[i].difference == 0) {
          break;
        } else {
          if (debtors[j].difference == 0) {
            continue;
          } else if (getters[i].difference > debtors[j].difference) {
            getters[i].difference -= debtors[j].difference;
            result.add(MemberToMember(debtors[j].name, getters[i].name, debtors[j].difference));
            debtors[j].difference = 0;
            continue;
          } else if (getters[i].difference <= debtors[j].difference) {
            debtors[j].difference -= getters[i].difference;
            result.add(MemberToMember(debtors[j].name, getters[i].name, getters[i].difference));
            getters[i].difference = 0;
            break;
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(result.toString()),
      ),
    );
  }
}
