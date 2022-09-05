import 'package:flutter/material.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/functions.dart';
import 'package:we_pay/presentation/screens/expense/debtors_bottom_sheet/models/member.dart';
import 'package:we_pay/presentation/screens/expense/debtors_bottom_sheet/models/member_to_member.dart';

class DebtorsBottomSheet extends StatelessWidget {
  DebtorsBottomSheet({Key? key, required this.products}) : super(key: key) {
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

    Member.calculateAverage(members);
    populateDebtorsAndGetters();
    determineDebtors();
  }

  final List<Product> products;
  final List<Member> members = [];
  final List<Member> debtors = [];
  final List<Member> getters = [];
  final List<MemberToMember> result = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Qarzdorlar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              Container(height: 34, color: grey, width: 1),
              const Expanded(
                child: Text(
                  'Summa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 0.2,
                    color: blue,
                  ),
                ),
              ),
              Container(height: 34, color: grey, width: 1),
              const Expanded(
                child: Text(
                  'Xaqdorlar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: result.length,
            itemBuilder: (_, index) => Column(
              children: [
                Container(
                  height: 1,
                  width: double.maxFinite,
                  color: grey,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        result[index].giverMemberName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(height: 34, color: grey, width: 1),
                    Expanded(
                      child: Text(
                        priceFixer(result[index].cost.toString()),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14, color: red),
                      ),
                    ),
                    Container(height: 34, color: grey, width: 1),
                    Expanded(
                      child: Text(
                        result[index].getterMemberName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void populateDebtorsAndGetters() {
    for (final member in members) {
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
}
