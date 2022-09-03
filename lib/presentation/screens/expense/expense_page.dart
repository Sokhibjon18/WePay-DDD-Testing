import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:we_pay/add_manager.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/screens/debtors/models/member.dart';
import 'package:we_pay/presentation/screens/expense/custom_chart/chart_model.dart';
import 'package:we_pay/presentation/screens/expense/widgets/app_bar.dart';
import 'package:we_pay/presentation/screens/expense/widgets/product_bottom_sheet.dart';
import 'package:we_pay/presentation/screens/expense/widgets/product_item.dart';
import 'package:we_pay/presentation/screens/expense/widgets/total_expenses.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key, required this.apartment}) : super(key: key);

  final PublicExpense apartment;

  @override
  State<ExpensePage> createState() => ExpensePageState();
}

class ExpensePageState extends State<ExpensePage> {
  late final width = MediaQuery.of(context).size.width;
  late final BannerAd bannerAd;
  List<Product> products = [];

  @override
  void initState() {
    bannerAd = BannerAd(
      adUnitId: AdManager.bannerAdUnitIdExpenses,
      size: AdSize.banner,
      listener: const BannerAdListener(),
      request: const AdRequest(),
    )..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: expencePageAppBar(context, widget.apartment.name),
      body: BlocListener<ProductFormBloc, ProductFormState>(
        listener: (context, state) {
          state.creationOption.fold(
            () => null,
            (a) => a.fold(
              (f) => null,
              (u) => context
                  .read<ProductFormBloc>()
                  .add(ProductFormEvent.sendNotificationsTo(widget.apartment.users)),
            ),
          );
          state.editOption.fold(
            () => null,
            (a) => a.fold(
              (f) {
                String errorMessage = '';
                errorMessage = f.maybeMap(
                  wrongOwner: (value) => value.errorMessage,
                  orElse: () => '',
                );
                if (errorMessage.isNotEmpty) {
                  FlushbarHelper.createInformation(message: errorMessage).show(context);
                }
              },
              (r) {
                productBottomsheet(
                  context.findAncestorStateOfType<ExpensePageState>()!.context,
                  product: r,
                );
              },
            ),
          );
          state.deleteOption.fold(
            () => null,
            (a) => a.fold(
              (f) {
                String errorMessage = '';
                errorMessage = f.maybeMap(
                  wrongOwner: (value) => value.errorMessage,
                  orElse: () => '',
                );
                if (errorMessage.isNotEmpty) {
                  FlushbarHelper.createInformation(message: errorMessage).show(context);
                }
              },
              (r) => null,
            ),
          );
        },
        child: BlocBuilder<ProductActorBloc, ProductActorState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: state.maybeMap(
                    loadFailure: (loadFailure) => loadFailureWidget(loadFailure),
                    loadSuccess: (loadSuccess) {
                      products = loadSuccess.productList;
                      return loadSuccessWidget(loadSuccess.productList);
                    },
                    emptyList: (_) => emptyListWidget(),
                    orElse: () => const Center(child: CircularProgressIndicator()),
                  ),
                ),
                SizedBox(height: 50, child: AdWidget(ad: bannerAd))
              ],
            );
          },
        ),
      ),
      floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.calculate),
                onPressed: () {
                  // context.router.push(DebtorsRoute(products: products));
                },
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  context.read<ProductFormBloc>().add(const ProductFormEvent.initial());
                  productBottomsheet(context);
                },
              ),
            ],
          )),
    );
  }

  Widget emptyListWidget() => const Center(
        child: Text(
          'You don`t have any expences\nfor this month!',
          textAlign: TextAlign.center,
        ),
      );

  Widget loadSuccessWidget(List<Product> products) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    TotalExpenses(products),
                    Container(
                      height: width * 0.7,
                      padding: EdgeInsets.only(top: width * 0.45),
                      alignment: Alignment.topCenter,
                      width: width,
                      child: Align(
                        alignment: Alignment.center,
                        child: Wrap(children: getModelWidget(products)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 64),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductItem(product: products[index]),
                    separatorBuilder: (_, index) {
                      return Container(
                        height: 0.5,
                        color: Colors.grey[300],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget loadFailureWidget(loadFailure) {
    String errorMessage = loadFailure.failure.map(
      server: (_) => 'Server error',
      permissionDenied: (_) => 'Permission denied',
      unexpected: (v) => v.errorMessage,
    );
    return Center(child: Text(errorMessage));
  }

  List<Widget> getModelWidget(List<Product> products) {
    List<Widget> usersList = [];
    for (ChartModel chartModel in getChartModulsOfUsers(products)) {
      final userWidget = Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Column(
          children: [
            Text(
              chartModel.name,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 2),
            Container(
              decoration: BoxDecoration(
                color: chartModel.color,
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.2,
              height: 5,
            )
          ],
        ),
      );
      usersList.add(userWidget);
    }
    return usersList;
  }
}
