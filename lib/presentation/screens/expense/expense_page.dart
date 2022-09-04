import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/functions.dart';
import 'package:we_pay/presentation/core/snackbar.dart';
import 'package:we_pay/presentation/screens/expense/custom_chart/chart_model.dart';
import 'package:we_pay/presentation/screens/expense/widgets/app_bar.dart';
import 'package:we_pay/presentation/screens/expense/widgets/product_bottom_sheet.dart';
import 'package:we_pay/presentation/screens/expense/widgets/product_item.dart';
import 'package:we_pay/presentation/screens/expense/widgets/total_expenses.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key, required this.publicExpense}) : super(key: key);

  final PublicExpense publicExpense;

  @override
  State<ExpensePage> createState() => ExpensePageState();
}

class ExpensePageState extends State<ExpensePage> {
  late final width = MediaQuery.of(context).size.width;
  // late final BannerAd bannerAd;
  List<Product> products = [];

  @override
  void initState() {
    // bannerAd = BannerAd(
    //   adUnitId: AdManager.bannerAdUnitIdExpenses,
    //   size: AdSize.banner,
    //   listener: const BannerAdListener(),
    //   request: const AdRequest(),
    // )..load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ProductFormBloc, ProductFormState>(
          listener: (context, state) {
            state.creationOption.map(
              (a) => a.fold(
                (f) {
                  showSnackbar(context, SnackbarStatus.error, 'Server xatoligi');
                  Navigator.pop(scaffoldContext(context));
                },
                (r) => Navigator.pop(scaffoldContext(context)),
              ),
            );
            state.updateOption.map(
              (a) => a.fold(
                (f) {
                  showSnackbar(context, SnackbarStatus.error, 'Server xatoligi');
                  Navigator.pop(scaffoldContext(context));
                },
                (r) => Navigator.pop(scaffoldContext(context)),
              ),
            );
          },
        ),
        BlocListener<ProductFormBloc, ProductFormState>(
          listener: (context, state) {
            state.creationOption.fold(
              () => null,
              (a) => a.fold(
                (f) => null,
                (u) => context
                    .read<ProductFormBloc>()
                    .add(ProductFormEvent.sendNotificationsTo(widget.publicExpense.users)),
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
        ),
      ],
      child: Stack(
        children: [
          BlocBuilder<ProductActorBloc, ProductActorState>(
            builder: (context, state) {
              return Container(
                color: white,
                child: Column(
                  children: [
                    expencePageAppBar(context, onDebtorTaped: () {}),
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
                    // SizedBox(height: 50, child: AdWidget(ad: bannerAd))
                  ],
                ),
              );
            },
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: GestureDetector(
              onTap: () {
                context.read<ProductFormBloc>().add(const ProductFormEvent.initial());
                productBottomsheet(context);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(color: blue, borderRadius: BorderRadius.circular(8)),
                child: const Icon(Icons.add_rounded, color: white, size: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget emptyListWidget() => const Center(
        child: Text(
          'Ushbu ro`yxatga hali harajatlar\nkiritilmagan',
          textAlign: TextAlign.center,
        ),
      );

  Widget loadSuccessWidget(List<Product> products) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(top: 0, child: TotalExpenses(products)),
            Positioned(
              top: width * 0.5,
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: getModelWidget(products),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) => ProductItem(product: products[index]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loadFailureWidget(loadFailure) {
    String errorMessage = loadFailure.failure.map(
      server: (_) => 'Server xatoligi',
      permissionDenied: (_) => 'Ruxsat berilmadi',
      unexpected: (v) => v.errorMessage,
    );
    return Center(child: Text(errorMessage));
  }

  List<Widget> getModelWidget(List<Product> products) {
    List<Widget> usersList = [];
    for (ChartModel chartModel in getChartModulsOfUsers(products)) {
      final userWidget = Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(
            chartModel.name,
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w500,
              color: chartModel.color,
            ),
          ),
        ),
      );
      usersList.add(userWidget);
    }
    return usersList;
  }
}
